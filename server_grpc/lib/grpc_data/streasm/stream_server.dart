import 'dart:async';

import 'package:server_grpc/grpc_data/grpc_data.dart';




class StreamServer {
  StreamServer._instance();
  static final StreamServer _singleton = StreamServer._instance();
  factory StreamServer() => _singleton;
  static StreamController<TransactionNotification> controllers = StreamController();
  cloase() async {
    controllers.close();
  }
}
