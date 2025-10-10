import 'package:ab_shared/services/encryption.service.dart';
import 'package:ab_shared/utils/api_client.dart';
import 'package:get_it/get_it.dart';
import 'package:notes/entities/folder/folder.entity.dart';

class FolderService {
  final getIt = GetIt.instance;
  late final ApiClient globalApiClient;
  late final EncryptionService encryptionService;

  FolderService() {
    globalApiClient = getIt<ApiClient>();
    encryptionService = getIt<EncryptionService>();
  }

  Future<List<Folder>> getAllFolders() async {
    final result = await globalApiClient.get('/folders');
    if (result.statusCode == 200) {
      final List<Folder> folders = [];

      for (var folder in (result.data ?? [])) {
        final decryptedFolder = await Folder.decrypt(
          folder as Map<String, dynamic>,
          encryptionService,
        );
        folders.add(decryptedFolder);
      }
      return folders;
    } else {
      throw Exception('folders_fetch_failed');
    }
  }

  Future<bool> createFolder(Folder folder) async {
    final encryptedFolder =
        await folder.encrypt(encryptionService: encryptionService);
    final result =
        await globalApiClient.post('/folders', data: encryptedFolder);
    if (result.statusCode == 201) {
      return true;
    } else {
      throw Exception('folder_create_failed');
    }
  }

  Future<bool> updateFolder(Folder folder) async {
    final encryptedFolder =
        await folder.encrypt(encryptionService: encryptionService);

    final result = await globalApiClient.put('/folders/${folder.id}',
        data: encryptedFolder);
    if (result.statusCode == 200) {
      return true;
    } else {
      throw Exception('folder_update_failed');
    }
  }

  Future<bool> deleteFolder(Folder folder) async {
    final result = await globalApiClient.delete('/folders/${folder.id}');
    if (result.statusCode == 204) {
      return true;
    } else {
      throw Exception('folder_delete_failed');
    }
  }
}
