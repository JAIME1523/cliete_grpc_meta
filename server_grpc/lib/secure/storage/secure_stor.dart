
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const _storage = FlutterSecureStorage();

  static Future<String?> readStorage(SecureList key) async {
    return await _storage.read(key: key.value);
  }

  static saveStorage(SecureList key, String value) async {
    await _storage.write(key: key.value, value: value);
  }

  static deleteStorage(SecureList key, String value) async {
    await _storage.delete(key: key.value);
  }



//*implementar Either
///!falta definier mas informacion como implementar
///Suguerencia de uso con single con donde se pongas 2(origenMac, staticMac) vairables para hacer comparacion la origenKey coicide con la que manda si no buscar la nueva y
///volver a asignar valor a staicMac
///if(originMac == '${origin}Mac' )  return staticMac
///si no es igual busca si esta registrada si no existe regresar error con Either
///si existe la lee y la asigana staticMac y la regresa
  static Future<Uint8List?> getMackeyOrigin(String origin) async {
    final originKey = '${origin}Mac';
    if( !(await _storage.containsKey(key: origin))) return Uint8List(1); ///*aqui regresar el Either
    final keyString = await _storage.read(key: originKey);
    final keyInit = base64Decode(keyString!);
    return keyInit;
  }
}

  


enum SecureList {
  publicKey("publicKey"),
  macKey("macKey");

  final String value;
  const SecureList(this.value);
}
