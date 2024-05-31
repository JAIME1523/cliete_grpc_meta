library server_grpc;

export 'package:server_grpc/database/database.dart';
export 'package:server_grpc/grpc_data/grpc_data.dart';


class ServerGrpc{
/* 
  ServerGrpc._instance();
  static final ServerGrpc _singleton = ServerGrpc._instance();
  factory ServerGrpc() => _singleton;

    static Server? server;  
    static Future createServer({required List<Service> services, int port = 50051}) async {
      if (server != null) return;
      server = Server.create(
        services: services,
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      );
      await server!.serve(port: port);
      return server;
    }

  static Future<bool> stopServer() async {
    try {
      if (server == null) return true;
      await server!.shutdown();
      server = null;
      return true;
    } catch (e) {
      return false;
    }
  } */
}