import 'dart:math';

import 'package:client_meta/presentation/service/encrypt_grcp/encrrypt_grcp_service.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:server_grpc/grpc_data/grpc_data.dart';
import 'package:server_grpc/grpc_data/protos/model/test/test_conect.pb.dart';

import '../../logger/logger_printer.dart';
import 'encrypt/rsa_service.dart';

class ConectServices {
  static ResponseStream<TransactionNotification>? metaSrteam;

  static final logger = getLogger();
  static ClientChannel initChane(
      {String host = '192.168.100.30', int port = 8080}) {
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
                  id: '1',
                  amount: 50000,
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
      final response = await metaApp.getTransaction(GetTransactionRequest(
        id: id,
        origin: 'Desde web',
      ));
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
      final response =
          await metaApp.testC(RequestClientInfo()).catchError((val) {
        logger.e('No hay conexcion');
        return '';
      });
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
          await channel.shutdown().catchError((error) {});
          metaSrteam!.cancel().catchError((val) {});
        } catch (e) {
          logger.d(e);
        }
      });
    } catch (e) {
      await channel.shutdown();
      await metaSrteam!.cancel();
    }
  }

  static Future<bool> matchmaking(BuildContext context) async {
    final channel = initChane();

    try {
      int randomNumber = Random().nextInt(999999) + 100000;
      _showModalMat(context, randomNumber.toString());
      final publicKey = await EncryptGrcpService.generatePem();
      final metaApp = MetaAppClient(channel);
      final response = await metaApp.registerClient(RegisterClientRequest(
          publicKey: publicKey, randomCode: randomNumber.toString()));
      logger.w(response);
      if (response.macKey.isNotEmpty) {
        await EncryptGrcpService.decripMacSave(response.macKey);
        await EncryptGrcpService.getMac();
        return true;
      }

      await channel.shutdown();
      return false;
    } catch (e) {
      logger.e(e);

      await channel.shutdown();
      return false;
    }
  }

  static generatePairKey() async {
    await RsaService.generate();
  }

  static _showModalMat(BuildContext context, String randomNumber) {
    final styleText = Theme.of(context).textTheme;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text(
          randomNumber.toString(),
          style: styleText.titleLarge,
          textAlign: TextAlign.center,
        ),
        title: Center(
          child: Text(
            'Ingrese este numero en su terminal',
            style: styleText.titleMedium,
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Ok'))
        ],
      ),
    );
  }
}
