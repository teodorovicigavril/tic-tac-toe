import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketClient {
  SocketClient._internal() {
    socket = io.io('http://192.168.0.172:8080', <String, dynamic> {
      'transports': <String>['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
  }

  io.Socket? socket;
  static SocketClient? _instance;

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}
