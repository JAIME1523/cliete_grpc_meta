import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pointycastle/export.dart';

class SecureStor {
  static const storage = FlutterSecureStorage();

  static Future<String?> readStorage(SecureList key) async {
    return await storage.read(key: key.value);
  }

  static saveStorage(SecureList key, String value) async {
    await storage.write(key: key.value, value: value);
  }

 static Future<RSAPublicKey?> getPublicKey() async {
    final String modulus = await readStorage(SecureList.modulusPub) ?? '';
    final String exponent = await readStorage(SecureList.exponentpub) ?? '';

    if(modulus.isEmpty || exponent.isEmpty) return null;
    return RSAPublicKey(BigInt.parse(modulus), BigInt.parse(exponent));
  }

   static Future<RSAPrivateKey> getPrivcKey() async {
    final String modulus = await readStorage(SecureList.modulusPriv) ?? '';
    final String exponent = await readStorage(SecureList.exponentPriv) ?? '';
    final String? q = await readStorage(SecureList.q) ;
    final String? p = await readStorage(SecureList.p) ;


    return RSAPrivateKey(BigInt.parse(modulus), BigInt.parse(exponent),  BigInt.tryParse(p!), BigInt.parse(q!), ) ;
  }


 static Future<bool> savePubKeyPriv(AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> key) async {
    try {
      await saveStorage(SecureList.modulusPub, key.publicKey.modulus.toString());
      await saveStorage(SecureList.exponentpub, key.publicKey.exponent.toString());
      await saveStorage(SecureList.modulusPriv, key.privateKey.modulus.toString());
      await saveStorage(SecureList.exponentPriv, key.privateKey.exponent.toString());
      await saveStorage(SecureList.p, key.privateKey.p.toString());
      await saveStorage(SecureList.q, key.privateKey.q.toString());
      return true;
    } catch (e) {
      return false;
    }
  }
}

enum SecureList {
  modulusPub("modulusPub"),
  exponentpub("exponentpub"),
  modulusPriv("modulusPriv"),
  exponentPriv("exponentPriv"),
  p("p"),
  q("q"),
  macKey("macKey");


  final String value;
  const SecureList(this.value);
}
