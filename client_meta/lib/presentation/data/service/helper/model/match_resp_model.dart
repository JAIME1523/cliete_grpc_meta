import 'dart:convert';

import 'package:server_grpc/database/models/data_model.dart';

 ///{ "status":true "mackey":"la mac" "error":"errores" }

class MatchRespModel extends DataDbM {
  final bool status;
  final List<int>? mackey;
  final String? errorMessage;
  final String? errorCode;


  MatchRespModel( {
     required this.status,
     this.mackey,
     this.errorMessage,
     this.errorCode
  });

  MatchRespModel copyWith({
    bool? status,
     List<int>? mackey,
    String? errorMessage,
   String? errorCode,

  }) =>
      MatchRespModel(
        status: status ?? this.status,
        mackey: mackey ?? this.mackey,
        errorMessage: errorMessage ?? this.errorMessage,
        errorCode: errorCode?? this.errorCode
      );

  factory MatchRespModel.fromJson(String str) =>
      MatchRespModel.fromMap(json.decode(str));

  @override
  String toJson() => json.encode(toMap());

  factory MatchRespModel.fromMap(Map<String, dynamic> json) => MatchRespModel(

        status: json["status"],
        mackey:  json["mackey"] != null ?  List<int>.from(json["mackey"]): null,
        errorMessage: json["errorMessage"],
        errorCode: json["errorCode"],


        
      );

  @override
  Map<String, dynamic> toMap() => {
        "status": status,
        "mackey": mackey,
        "errorMessage": errorMessage,
        "errorCode":errorCode
      };
}
