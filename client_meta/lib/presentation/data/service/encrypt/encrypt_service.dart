
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:client_meta/logger/logger_printer.dart';
import 'package:client_meta/presentation/data/service/secure/secure_stor.dart';
import 'package:encrypt/encrypt.dart';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/services.dart';

/* const publicKeyConst =
    'MIIBCgKCAQEApIVQ0T3Ad44jRs3cM7cJVBxkQcPOvOb6GikwN0miDAQJL7LeVPi97AuDpth0MfHYtNej91991D/YtWsIvYNNs+8BSTCsC+3QdZN+g0tMBr7ldgaz2acaKsNycJXDkPoc7EOsWsIX+AT0txAUg0nwe6YoEoWTomyJV6e8Ubm3t1KHyat9OUP3wOVxnwiqbjTYOTnMQw269u5l4ZECWSRrgVP+o5KDQRvizJcT67dpc1H6ChR+C1VGNikBHbrmtibBynLqdgx/wguP6/iP9B2r2+xZwLWBQTpl2cFB2YzOdesTcGnQZfMLOdUoAeJpWiIxGYOWdxXorXiIMpgdSAC73QIDAQAB';
//"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAugflCYHdNLX1PK+2JpedLoL4JdwpapkpwoSIYOhBF9FFri+roRTqPyyosLFGMMnO5l65z9YY1cQYSENWfhLvPROD2Oruyl1k2wSYWT+23wTB0jJjA4ktk7Q2cErNzMNiLLP0tB3rOYJHxC1HjskKBmkblF5ZDeCNzVyeEdF37zfCDD5bBIjPSpmLgH1swDQIvpULhwhmyf1AaJX+oaaCQgu6wxrbP17auMJzAjhddwUgIbkCiAEcYu8fwyTXQWFcQtfA3nufCITAcI7jmtxrXKqKWgZ23oIgvmIM1y9l6Bp9QT8MvDn63wfj54fyOW5Jb66G19x/xVGF5lH68qPErwIDAQAB";
 */
class EncryptService {
  static final log = getLogger();
  static Uint8List generateRandomAESKey(int length) {
    final random = Random.secure();
    return Uint8List.fromList(
        List<int>.generate(length, (index) => random.nextInt(128)));
  }

  //static Future<Uint8List> macDecript() async {
  static Future<Uint8List> macDecript() async {
    //final ecnripMac =   await encriptMac();
    final decrip = Encrypter(RSA(
        privateKey: await SecureStor.getPrivcKey(),
        encoding: RSAEncoding.OAEP));
    final ecnripMac = await SecureStor.readStorage(SecureList.macKey);
    log.d(ecnripMac);
    log.f('********************');
    log.f(decrip.decrypt16(ecnripMac ?? ''));
    log.w(utf8.encode((decrip.decrypt16(ecnripMac ?? ''))));
    return utf8.encode((decrip.decrypt16(ecnripMac ?? '')));
    // log.f( decrip.decryptBytes(encryotedMackey));
    /*    print(encryotedMackey.base64);
    print(encryotedMackey.bytes);
    print(encryotedMackey.base16);


    log.d(encryotedMackey.base64.toString());
    final publicByte = base64Decode(encryotedMackey.base64);
    log.d(publicByte);
    final publicKey = CryptoUtils.rsaPublicKeyFromDERBytes(publicByte);
    log.d(publicKey.modulus); */
  }

  static Future<Encrypted> encriptMac() async {
    //!encodeRSAPublicKeyToPem(await SecureStor.getPublicKey());
    final macKey = generateRandomAESKey(64);
    final pem =
        CryptoUtils.encodeRSAPublicKeyToPem((await SecureStor.getPublicKey())!);
    final newPem = pem.toString().replaceAll('\n', '').replaceFirst('-----BEGIN PUBLIC KEY-----', '').replaceFirst('-----END PUBLIC KEY-----', '').trim();
    log.f(newPem);

    final publicKeyBit = base64Decode(newPem.replaceAll('\n', ''));
    final publicK = CryptoUtils.rsaPublicKeyFromDERBytes(publicKeyBit);
    log.f(publicK);
/*         print(respFinal[0]);

final pubnlivBytes = base64Decode(respFinal[0].replaceAll(' ', ''));
final  keyFibnla = CryptoUtils.rsaPublicKeyFromDERBytes(pubnlivBytes);
print(keyFibnla.publicExponent) ; 
 */
    /*     
    final publicKey =CryptoUtils.rsaPublicKeyFromPem(pem); */
    /* final publicBytes = base64Decode(pem);
    final publKey = CryptoUtils.rsaPublicKeyFromDERBytes(publicBytes); */
    /*   final mackKey = genmerate;
    log.d(mackKey);
    final encrypter = Encrypter(RSA(publicKey: publicKey, encoding: RSAEncoding.OAEP));
    final encryotedMackey = encrypter.encryptBytes(mackKey); 



     */
    final encrypter = Encrypter(RSA(publicKey: publicK, encoding: RSAEncoding.OAEP));
    final encryotedMackey = encrypter.encryptBytes(macKey);
    SecureStor.saveStorage(SecureList.macKey, encryotedMackey.base16.toString());
    return encryotedMackey;
  }
}
