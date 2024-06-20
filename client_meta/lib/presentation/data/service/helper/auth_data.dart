import 'package:client_meta/logger/logger_printer.dart';
import 'package:client_meta/presentation/data/service/helper/failures.dart';
import 'package:client_meta/presentation/data/service/helper/local_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:server_grpc/secure/payload/payload_generate_service.dart';
import 'package:server_grpc/server_grpc.dart';

class AtuhDataSerice {
  static final logger = getLogger();

  static Future<Either<AthFailure, bool>> validate(
      {required TypeAuth typeAuth, required AuthData authData, String? amount, TransactionStatus? status}) async {
    final myCouter = await LocalStorage.getSaveCounter();
    logger.f('es tipo de dato $typeAuth');
    //if (myCouter != authData.counter) return left(const AthFailure('No coinciden el counter', status: false, errorCode: MetaErrorCode.InvalidCounter));
    final resp = await _generatePaylod(typeAuth, counter: myCouter.toString(), amount: amount, status: status);
    if (await PayloadGenerateService.validatePlayload(receivedPayload: authData.mac, myPayload: resp, )) {
      return right(true);
    }
    return left(const AthFailure('No se puede autenticar ',status: false, errorCode: MetaErrorCode.AuthError));
  }

  static Future<AuthData> generateNewAuth(TypeAuth typeAuth,{String? amount,TransactionStatus? status}) async {

    final myCouter = await LocalStorage.getSaveCounter();
    logger.f('este es el couter $myCouter');
    final payload =  await _generatePaylod(typeAuth, counter: '$myCouter', amount: amount, status: status);
    print('******************************');

    print(payload);
    final auth = AuthData(counter:myCouter, mac:payload, macLabel:  '${status??amount??''}$myCouter' );
    return auth;
  }

  static Future<List<int>> _generatePaylod(TypeAuth typeAuth,
      {required String counter,
      String? amount ,
      TransactionStatus? status}) async {
    switch (typeAuth) {
      case TypeAuth.counter:
        return await PayloadGenerateService.counterPayloGener(counter: counter);
      case TypeAuth.counterAmount:
        return await PayloadGenerateService.counterAmountPayloGener(
            counter: counter, amount: amount!);
      case TypeAuth.counterStatus:
        return await PayloadGenerateService.counterStatusPaylo(
            counter: counter, status: status!);
    }
  }
}

enum TypeAuth { counter, counterAmount, counterStatus }
