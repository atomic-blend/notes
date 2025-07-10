import 'package:notes/entities/sync/item_type/item_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conflicted_item.freezed.dart';
part 'conflicted_item.g.dart';

@freezed
class ConflictedItem with _$ConflictedItem {
  const factory ConflictedItem({
    required ItemType type,
    required String patchId,
    Map<String, dynamic>? remoteObject,
  }) = _ConflictedItem;

  factory ConflictedItem.fromJson(Map<String, dynamic> json) =>
      _$ConflictedItemFromJson(json);
}
