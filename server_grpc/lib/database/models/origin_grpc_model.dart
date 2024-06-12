import 'dart:convert';

import 'package:server_grpc/database/models/data_model.dart';
import 'package:server_grpc/database/models/transaction_grpc_model.dart';



class OriginGrpcModel extends DataDbM {
  final int? origintransactionId;
  final String? origin;
  final dynamic idProto;
  final TransactionGRpcModel? transactionGRpcModel;


  OriginGrpcModel( {
     this.origintransactionId,
     this.origin,
     this.idProto,
     this.transactionGRpcModel
  });

  OriginGrpcModel copyWith({
    int? origintransactionId,
    String? origin,
    int? idProto,
   TransactionGRpcModel? transactionGRpcModel,

  }) =>
      OriginGrpcModel(
        origintransactionId: origintransactionId ?? this.origintransactionId,
        origin: origin ?? this.origin,
        idProto: idProto ?? this.idProto
      );

  factory OriginGrpcModel.fromJson(String str) =>
      OriginGrpcModel.fromMap(json.decode(str));

  @override
  String toJson() => json.encode(toMap());

  factory OriginGrpcModel.fromMap(Map<String, dynamic> json) => OriginGrpcModel(

        origintransactionId: json["origintransactionId"],
        origin: json["origin"],
        idProto: json["idProto"],

        
      );

  @override
  Map<String, dynamic> toMap() => {
        "origintransactionId": origintransactionId,
        "origin": origin,
        "idProto": idProto,

      };
}
