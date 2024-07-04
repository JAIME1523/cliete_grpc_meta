
import 'dart:async';
import 'package:server_grpc/server_grpc.dart';

class StreamServer {
  StreamServer._instance();
  static final StreamServer _singleton = StreamServer._instance();
  factory StreamServer() => _singleton;

  static StreamController<TransactionNotification> controllers = StreamController.broadcast();
  static Stream<TransactionNotification> streamProto = controllers.stream;
  static OriginGrpcModel? transactionOrigin;
  static bool isMatching = false;

  static cleanTransac() async {
    transactionOrigin = null;
  }


}
