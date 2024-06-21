class UtilsAmont {
  static RegExp domainExp = RegExp(r"");

  static String amontCustom(String amont) {
    final listA = amont.split('');
    if (listA.length <= 2) {
      return '0.${listA.join()}';
    }
    final firstRange = listA.getRange(0, listA.length - 2);
    final second = listA.getRange(listA.length - 2, listA.length);
    return '${firstRange.join('')}.${second.join('')}';
  }

  bool validtesAmont(String name) {
    return domainExp.hasMatch(name) ? true : false;
  }
}
