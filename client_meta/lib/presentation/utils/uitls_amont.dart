class UtilsAmont {
  static RegExp domainExp = RegExp(r"^[0-9]+([.][0-9]?[0-9])?$");

  static String amontCustom(String amont) {
    final listA = amont.split('');
    if (listA.length <= 2) {
      return listA.length <= 1 ? '0.0${listA.join()}' : '0.${listA.join()}';
    }
    final firstRange = listA.getRange(0, listA.length - 2);
    final second = listA.getRange(listA.length - 2, listA.length);
    return '${firstRange.join('')}.${second.join('')}';
  }

static  String? validtesAmont(String name) {
  final resp = domainExp.hasMatch(name) ? null : 'Ingrese un dato valido';
  return resp;
  }
}
