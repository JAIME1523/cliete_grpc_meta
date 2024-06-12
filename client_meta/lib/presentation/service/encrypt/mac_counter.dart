import 'dart:convert';

import 'package:crypto/crypto.dart';

import '../../../logger/logger_printer.dart';
import 'encrypt_service.dart';

class MacCounter {
  static final logger = getLogger();

  //!agregar string para el numero a incrementar
  static generateMac() async {
    var key = await EncryptService.macDecript();
    var bytes = utf8.encode("9999");
    var hmacSha256 = Hmac(sha256, key); // HMAC-SHA256
    var digest = hmacSha256.convert(bytes);
    logger.f(digest);
    //con lo anteriror es suficiente 
    String base64Mac = base64.encode(digest.bytes);
    logger.w(base64Mac);
  }
}
