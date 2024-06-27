// ignore_for_file: use_build_context_synchronously

import 'dart:math';

import 'package:client_meta/presentation/data/model/models.dart';
import 'package:client_meta/presentation/data/provider/home_provider.dart';
import 'package:client_meta/presentation/data/service/encrypt_grcp/encrrypt_grcp_service.dart';
import 'package:client_meta/presentation/data/service/helper/auth_data.dart';
import 'package:client_meta/presentation/data/service/helper/local_storage.dart';
import 'package:client_meta/presentation/widgets/custom_snack.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:nav_service/nav_service.dart';
import 'package:provider/provider.dart';
import 'package:server_grpc/grpc_data/protos/model/test/test_conect.pb.dart';
import 'package:server_grpc/server_grpc.dart';

import '../../../logger/logger_printer.dart';
import 'encrypt/rsa_service.dart';

class ConectServices {
  static ResponseStream<TransactionNotification>? metaSrteam;
/*   static String ipConfig = LocalStorage.getIpAdrres(); 
  static int puerto = LocalStorage.getPort(); 
 */

  static final logger = getLogger();
  static ClientChannel initChane() {
    ClientChannel channel = ClientChannel(
      LocalStorage.getIpAdrres(),
      port: LocalStorage.getPort(),
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    return channel;
  }

  static Future<ResponseModel> insertTransaction(int amount) async {
    final channel = initChane();

    try {
      final auth = await AtuhDataSerice.generateNewAuth(TypeAuth.counterAmount,
          amount: '$amount');
      logger.f('esta es ladata que madno$auth');
      final metaApp = MetaAppClient(channel);
      final transac = Transaction(
        amount: amount,
        status: TransactionStatus.Pending,
        type: TransactionType.Sale,
      );
      final response = await metaApp.registerTransaction(
          RegisterTransactionRequest(
              authData: auth, origin: 'Desde web', transaction: transac));
      await channel.terminate();

      logger.w(response.error.errorMsg.isEmpty);
      logger.e(response.error.errorMsg.isEmpty);
      if (response.error.errorMsg.isEmpty) {
        logger.d('La repsuesta no tine error');

        final isValid = await AtuhDataSerice.validate(
          typeAuth: TypeAuth.counter,
          authData: response.authData,
        );

        print(isValid);
        if (isValid.isRight()) {
          logger.d('Todo fine');
          CustomSnack.showMessage(
              'Se registro la transaccion con ID: ${response.id}',
              milliseconds: 4000);
          final tran =
              TransactionGRpcModel.fromMapByGrpc(transac.writeToJsonMap())
                  .copyWith(idProtoTransaction: response.id);
          return ResponseModel(status: true, info: 'Fine', transcion: tran);

          /* await channel.shutdown();

          startTransaccion(response.id);

          return; */
        } else {
          await LocalStorage.getSaveCounter();
          CustomSnack.errorSnack('No se puede autenticar');
          logger.e('No COINCIDE');

          return ResponseModel(status: false, info: 'No se puede autenticar');
        }
      }
      logger.d(response);

      return ResponseModel(status: false, info: response.error.errorMsg);
    } catch (e) {
      await channel.shutdown();

      return ResponseModel(status: false, info: 'Error en esta app');
    }
  }

  static Future<ResponseModel> getTransaction(String id) async {
    final channel = initChane();
    final auth = await AtuhDataSerice.generateNewAuth(TypeAuth.counter);
    logger.f('esta es ladata que madno$auth');
    try {
      final metaApp = MetaAppClient(channel);
      final response = await metaApp.getTransaction(GetTransactionRequest(
        authData: auth,
        id: id,
        origin: 'Desde web',
      ));
      await channel.shutdown();

      logger.e(response.error.errorMsg.isEmpty);
      if (response.error.errorMsg.isEmpty) {
        logger.d('La repsuesta no tine error');

        final isValid = await AtuhDataSerice.validate(
            typeAuth: TypeAuth.counterStatus,
            authData: response.authData,
            status: response.transaction.status);

        print(isValid);
        if (isValid.isRight()) {
          logger.d('Todo fine');
          final tran = TransactionGRpcModel.fromMapByGrpc(
                  response.transaction.writeToJsonMap())
              .copyWith(idProtoTransaction: id);
          return ResponseModel(
              status: true, info: 'Se encontro', transcion: tran);
        } else {
          await LocalStorage.getSaveCounter();
          logger.e('No COINCIDE');
          return ResponseModel(
              status: false, info: 'Error al validar informacion');
        }
      }
      logger.d(response);

      return ResponseModel(status: false, info: response.error.errorMsg);
    } catch (e) {
      await channel.shutdown();
      return ResponseModel(status: false, info: e.toString());
    }
  }

  static Future getStatus(String id) async {
    final channel = initChane();
    final auth = await AtuhDataSerice.generateNewAuth(TypeAuth.counter);
    logger.f('esta es ladata que madno$auth');

    try {
      final metaApp = MetaAppClient(channel);
      final response =
          await metaApp.getStatus(GetStatusRequest(id: id, authData: auth));
      await channel.shutdown();

      logger.e(response.error.errorMsg.isEmpty);
      if (response.error.errorMsg.isEmpty) {
        logger.d('La repsuesta no tine error');

        final isValid = await AtuhDataSerice.validate(
            typeAuth: TypeAuth.counterStatus,
            authData: response.authData,
            status: response.status);

        print(isValid);
        if (isValid.isRight()) {
          logger.d('Todo fine');

          if (response.status.name.isNotEmpty) {
            return CustomSnack.showMessage(response.status.name);
          }
       return   CustomSnack.errorSnack(response.error.errorMsg);
        } else {
          logger.e('No COINCIDE');
          await LocalStorage.getSaveCounter();
          logger.e('No COINCIDE');
          CustomSnack.errorSnack(response.error.errorMsg);
        }
      }
      CustomSnack.errorSnack(response.error.errorMsg);
      logger.d('esta es ladata que recibo');
      logger.f(response.writeToJson());
    } catch (e) {
      logger.e(e);

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
    final prov =  NavService.contextNav.read<HomeProvider>();
    final channel = initChane();
    logger.d(metaSrteam);
    if (metaSrteam != null) {
      logger.d('******* se cancela el stream ');
    }
    bool isCancel = true;
    prov.isPrcessTransac =  true;
    try {
      final auth = await AtuhDataSerice.generateNewAuth(TypeAuth.counter);
      logger.f('esta es ladata que madno$auth');
      final metaApp = MetaAppClient(channel);
      metaSrteam = metaApp.startTransaction(StartTransactionRequest(
        id: id,
        authData: auth,
        origin: 'Desde web',
      ));
      Future.delayed(const Duration(seconds: 90)).then((value) async {
        if (isCancel) {
        prov.isPrcessTransac =  false;

          CustomSnack.errorSnack('Tiempo de espera excedido ');
          await channel.shutdown().catchError((error) {});
          metaSrteam!.cancel().catchError((val) {});
          
        }
      });
      metaSrteam!.asBroadcastStream().listen((event) async {
        isCancel = false;
        logger.f(event);
        prov.isPrcessTransac =  false;
        if (!event.hasError()) {
          final isValid = await AtuhDataSerice.validate(
              typeAuth: TypeAuth.counterStatus,
              authData: event.authData,
              status: event.transaction.status);
          print(isValid);
          if (isValid.isRight()) {
            CustomSnack.showMessage('Se realizo transa.cción', backgroundColor: Colors.green);
            logger.d('Todo fine');
            NavService.contextNav
                .read<HomeProvider>()
                .updateElemnt(id: id, status: event.transaction.status ,stan: event.transaction.stan );
            return;
          } else {
            await LocalStorage.getSaveCounter();
            logger.e('No COINCIDE');
            
            return;
          }
        }
        if(event.hasError()){
     CustomSnack.errorSnack(event.error.errorMsg.isNotEmpty
            ? event.error.errorMsg
            : 'La operación fallo');
        logger.d(event);
        }
   

        try {
          await channel.shutdown().catchError((error) {});
          metaSrteam!.cancel().catchError((val) {});
        prov.isPrcessTransac =  false;

        } catch (e) {
          logger.d(e);
        prov.isPrcessTransac =  false;

        }
        _update(id);
      });
    } catch (e) {
      isCancel = false;
        prov.isPrcessTransac =  false;

      await channel.shutdown();
      await metaSrteam!.cancel();
    }
  }

  static Future<ResponseModel> matchmaking(BuildContext context) async {
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
        await channel.shutdown();

        return ResponseModel(status: true, info: 'Vinculado');
      }
      await channel.shutdown();
      return ResponseModel(status: false, info: response.error.errorMsg);
    } catch (e) {
      logger.e(e);
      await channel.shutdown();
      return ResponseModel(status: false, info: e.toString());
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
          /* ElevatedButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Ok')) */
        ],
      ),
    );
  }

  static _update(String id) async {
    final resul = await ConectServices.getTransaction(id);
    if (resul.transcion != null) {
      NavService.contextNav
          .read<HomeProvider>()
          .updateElemnt(id: id, status: resul.transcion!.status!);
    }
  }


    static Future<ResponseModel> cancelTransaction(String stan) async {
    final channel = initChane();
    final auth = await AtuhDataSerice.generateNewAuth(TypeAuth.stanCounte, stan: stan);
    logger.f('esta es ladata que madno$auth');
    try {
      final metaApp = MetaAppClient(channel,options: CallOptions());
      final response = await metaApp.cancelTransaction(CancelRequest (
        stan: stan,
        authData: auth,
        origin: 'Desde web',
      ));
      await channel.shutdown();

      if (response.error.errorMsg.isEmpty) {
        logger.d('La repsuesta no tine error');

        final isValid = await AtuhDataSerice.validate(
            typeAuth: TypeAuth.counterStatus,
            authData: response.authData,
            status: response.status);

        if (isValid.isRight()) {
          logger.d('Todo fine');
          
          return ResponseModel(
              status: true, info: 'Se encontro');
        } else {
          await LocalStorage.getSaveCounter();
          logger.e('No COINCIDE');
          return ResponseModel(
              status: false, info: 'Error al validar informacion');
        }
      }
      logger.d(response);

      return ResponseModel(status: false, info: response.error.errorMsg);
    } catch (e) {
      await channel.shutdown();
      return ResponseModel(status: false, info: e.toString());
    }
  }

}
