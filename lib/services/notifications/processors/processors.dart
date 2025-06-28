import 'package:firebase_messaging/firebase_messaging.dart';

class Processors {
  static processAndNotify(RemoteMessage message) async {
    switch (message.data['type']) {
      default:
        throw UnimplementedError(
            'No processor found for payload type: ${message.data['payload_type']}');
    }
  }
}
