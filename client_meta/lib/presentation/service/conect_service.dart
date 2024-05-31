import 'package:grpc/grpc.dart';
import 'package:server_grpc/grpc_data/grpc_data.dart';
import 'package:server_grpc/grpc_data/protos/model/test/test_conect.pb.dart';

import '../../logger/logger_printer.dart';


class ConectServices {
  static ResponseStream<TransactionNotification>? metaSrteam;

 static final logger = getLogger();
  static ClientChannel initChane({String host = '192.168.100.30', int port = 8080}) {
    ClientChannel channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    return channel;
  }

  static Future insertTransaction() async {
    final channel = initChane();

    try {
      final metaApp = MetaAppClient(channel);
      final response = await metaApp.registerTransaction(
          RegisterTransactionRequest(
              origin: 'Desde web',
              transaction: Transaction(
                  amount: 50000,
                  secondaryAmount: 20,
                  status: TransactionStatus.Pending,
                  type: TransactionType.Sale)));
      logger.d(response);
      await channel.terminate();
    } catch (e) {
      await channel.shutdown();
    }
  }

  static Future getTransaction(String id) async {
    final channel = initChane();
    try {
      final metaApp = MetaAppClient(channel);
      final response = await metaApp.getTransaction(GetTransactionRequest(id: id));
      logger.d(response);

      await channel.shutdown();
    } catch (e) {
      await channel.shutdown();
    }
  }

  static Future getStatus(String id) async {
    final channel = initChane();

    try {
      final metaApp = MetaAppClient(channel);
      final response = await metaApp.getStatus(GetStatusRequest(id: id));
      logger.d(response);
      await channel.shutdown();
    } catch (e) {
      await channel.shutdown();
    }
  }

  static Future testC() async {
    final channel = initChane();

    try {
      final metaApp = MetaAppClient(channel);
      final response = await metaApp.testC(RequestClientInfo());
      logger.d(response);

      await channel.shutdown();
    } catch (e) {
      await channel.shutdown();
    }
  }

  static Future startTransaccion(String id) async {
    final channel = initChane();
    logger.d(metaSrteam);
    if (metaSrteam != null) {
      logger.d('******* se cancela el stream ');
    }
    try {
      final metaApp = MetaAppClient(channel);
      metaSrteam = metaApp.startTransaction(StartTransactionRequest(id: id));

      metaSrteam!.asBroadcastStream().listen((event) async {
        logger.d(event);

        try {

          await channel.shutdown();
          metaSrteam!.cancel();

        } catch (e) {
          logger.d(e);
        }
      });
    } catch (e) {
      await channel.shutdown();
      await metaSrteam!.cancel();
    }
  }
}
