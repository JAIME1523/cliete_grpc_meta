import 'dart:convert';

class DataDbM {
  DataDbM();

  factory DataDbM.fromJson(String str) => DataDbM.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataDbM.fromMap(Map<String, dynamic> json) => DataDbM();

  Map<String, dynamic> toMap() => {};
}
