import 'dart:convert';

import 'package:server_grpc/database/models/data_model.dart';
import 'package:server_grpc/database/models/transaction_grpc_model.dart';



class OriginGrpcModel extends DataDbM {
  final int? origintransactionId;
  final String? orgigin;
  final int? transactionId;
   TransactionGRpcModel? transactionGRpcModel;

  OriginGrpcModel( {
     this.origintransactionId,
     this.orgigin,
     this.transactionId,
     this.transactionGRpcModel,
  });

  OriginGrpcModel copyWith({
    int? origintransactionId,
    String? orgigin,
    int? transactionId,
   TransactionGRpcModel? transactionGRpcModel,

  }) =>
      OriginGrpcModel(
        origintransactionId: origintransactionId ?? this.origintransactionId,
        orgigin: orgigin ?? this.orgigin,
        transactionId: transactionId ?? this.transactionId,
        transactionGRpcModel: transactionGRpcModel?? this.transactionGRpcModel
      );

  factory OriginGrpcModel.fromJson(String str) =>
      OriginGrpcModel.fromMap(json.decode(str));

  @override
  String toJson() => json.encode(toMap());

  factory OriginGrpcModel.fromMap(Map<String, dynamic> json) => OriginGrpcModel(

        origintransactionId: json["origintransactionId"],
        orgigin: json["orgigin"],
        transactionId: json["transactionId"],
        transactionGRpcModel: json["transactionGRpcModel"]
      );

  @override
  Map<String, dynamic> toMap() => {
        "origintransactionId": origintransactionId,
        "orgigin": orgigin,
        "transactionId": transactionId,
        "transactionGRpcModel":transactionGRpcModel
      };
}
