
import 'package:client_meta/logger/logger_printer.dart';
import 'package:client_meta/presentation/data/service/secure/secure_stor.dart';

import "package:pointycastle/export.dart";
import 'package:pointycastle/src/platform_check/platform_check.dart';

class RsaService {
   static final loger = getLogger();


  static AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> _generateRSAkeyPair(
      SecureRandom secureRandom,
      {int bitLength = 2048}) {
    final keyGen = RSAKeyGenerator();

    keyGen.init(ParametersWithRandom(RSAKeyGeneratorParameters(BigInt.parse('65537'), bitLength, 64), secureRandom));

    final pair = keyGen.generateKeyPair();

    final myPublic = pair.publicKey as RSAPublicKey;
    final myPrivate = pair.privateKey as RSAPrivateKey;

    return AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>(myPublic, myPrivate);
  }

  static SecureRandom exampleSecureRandom() {
    final secureRandom = SecureRandom('Fortuna')..seed(KeyParameter(Platform.instance.platformEntropySource().getBytes(32)));
    return secureRandom;
  }

  static generate()async {
    final pair = _generateRSAkeyPair(exampleSecureRandom());
    await SecureStor.savePubKeyPriv(pair);
    loger.f('Par de llaves generadas');
  }
  
  static showKeys()async{
    final resp = await SecureStor.getPublicKey();
    loger.d(resp!.modulus);
  }
}
