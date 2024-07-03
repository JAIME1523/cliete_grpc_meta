import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';
import 'package:client_meta/presentation/data/service/encrypt/rsa_service.dart';
import 'package:encrypt/encrypt.dart';
import 'package:server_grpc/secure/secure.dart';

import '../../../../logger/logger_printer.dart';
import '../secure/secure_stor.dart';

class EncryptGrcpService {
  static final log = getLogger();
  static Future<String> generatePem() async {
    final publikey =  await SecureStor.getPublicKey();

    if(publikey==null) await RsaService.generate();
    
    final pem = CryptoUtils.encodeRSAPublicKeyToPem((await SecureStor.getPublicKey())!);
    final newPem = pem.toString().replaceAll('\n', '').replaceFirst('-----BEGIN PUBLIC KEY-----', '').replaceFirst('-----END PUBLIC KEY-----', '').trim();
    return newPem;
  }

  static decripMacSave(List<int> mackey) async {
    final decrip = Encrypter(RSA(
        privateKey: await SecureStor.getPrivcKey(),
        encoding: RSAEncoding.OAEP));
    final macDecr = decrip.decryptBytes(Encrypted(Uint8List.fromList(mackey)));
  await  EncryptService.saveMac(Uint8List.fromList(macDecr));
  }

 static getMac()async{
final reps = await  EncryptService.getMackey();
log.f('mac sin ecriptar $reps');
 }
}
