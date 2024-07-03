import 'dart:convert';
import 'dart:math';
import 'package:encrypt/encrypt.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/services.dart';
import 'package:server_grpc/secure/secure.dart';

class EncryptService {
  static Uint8List generateRandomAESKey() {
    const length = 128;
    final random = Random.secure();
    return Uint8List.fromList(
        List<int>.generate(length, (index) => random.nextInt(128)));
  }

  static Future<Encrypted?> encryptMacKeyUint() async {
    final macKey = await getMackey();
    final publicKey = await getPublicKey();
    Encrypted? encryotedMackey;
    try {
      final encrypter =
          Encrypter(RSA(publicKey: publicKey, encoding: RSAEncoding.OAEP));
      encryotedMackey = encrypter.encryptBytes(macKey);
      return encryotedMackey;
    } catch (e) {
      return null;
    }
  }

  static Future<RSAPublicKey> getPublicKey() async {
    final stringKey = await SecureStorage.readStorage(SecureList.publicKey);
    final publicKeyBit = base64Decode(stringKey!);
    final publicK = CryptoUtils.rsaPublicKeyFromDERBytes(publicKeyBit);
    return publicK;
  }

  static Future<bool> saveMac(Uint8List macKey) async {
    try {
      final encodKye = base64Encode(macKey);
      await SecureStorage.saveStorage(SecureList.macKey, encodKye);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<Uint8List> getMackey() async {
    final keyString = await SecureStorage.readStorage(SecureList.macKey);
    final keyInit = base64Decode(keyString!);

    return keyInit;
  }
}
