
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';

import '../../server_grpc.dart';

class PayloadGenerateService {
  static Future<List<int>> _generatedMacPayload(Uint8List bytes) async {
    final Uint8List mackey = await EncryptService.getMackey();
    var hmacSha256 = Hmac(sha256, mackey); // HMAC-SHA256
    var digest = hmacSha256.convert(bytes);
    return digest.bytes;
  }

  Future<bool> validatePlayload(
      {required List<int> receivedPayload,
      required List<int> myPayload}) async {
    return receivedPayload == myPayload ? true : false;
  }

  static Future<List<int>> counterPayloGener({required String counter}) async {
    final payload = _paHexToBytes(counter);
    final payloadHmacSha256 = await _generatedMacPayload(payload);
    return payloadHmacSha256;
  }

  static Future<List<int>> counterAmountPayloGener({required String counter, required String amount}) async {
    final newValue = amount.split('.');
    final penny = _paddRight(newValue.last);
    final money = _padd(newValue.first);
    final newCoutenr = _padd(counter);
    final exa = _paHexToBytes('$newCoutenr$money$penny');
    final payloadHmacSha256 = await _generatedMacPayload(exa);

    return payloadHmacSha256;
  }

  static Future<List<int>> counterStatusPaylo(
      {required String counter, required TransactionStatus status}) async {
    status.value;
    dynamic newCon = _padd(counter);
    dynamic newSta = _padd(status.value.toString());
    final payloadHmacSha256 = await  _generatedMacPayload(_paHexToBytes('$newCon$newSta'));
    return payloadHmacSha256;
  }

  static String _paddRight(String name) {
    String newData;
    var digits = name.split('');
    newData = name;
    if (digits.length % 2 != 0) {
      digits.add('0');
      newData = digits.join();
    }
    return newData;
  }

  static String _padd(String strHex) {
    var digits = strHex.split('');
    if (digits.length.isOdd) digits.insert(0, "0");

    return digits.join();
  }

  static Uint8List _paHexToBytes(String strHex) {
    var digits = strHex.split('');
    if (digits.length.isOdd) digits.insert(0, "0");
    int bcdLen = digits.length ~/ 2;
    Uint8List bcd = Uint8List(bcdLen);
    for (int i = 0; i < strHex.length; i += 2) {
      String firstDigit = digits.elementAt(i);
      int firstValue = int.parse(firstDigit) << 4;
      String secondDigit = digits.elementAt(i + 1);
      int secondValue = int.parse(secondDigit);
      int combinedValue = firstValue | secondValue;
      bcd[i ~/ 2] = combinedValue;
    }
    return bcd;
  }
}
