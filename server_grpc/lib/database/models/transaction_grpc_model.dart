import 'dart:convert';

import 'package:server_grpc/database/models/data_model.dart';
import 'package:server_grpc/grpc_data/grpc_data.dart';


class TransactionGRpcModel extends DataDbM{
  final   int? transactionId;
   final  TransactionStatus transactionStatus;
     String? transactionType;
  final   String amount;
     String? secondaryAmount ;

    TransactionGRpcModel({
         this.transactionId,
         required this.transactionStatus,
           this.transactionType,
         required this.amount,
           this.secondaryAmount,
    });

    TransactionGRpcModel copyWith({
        int? transactionId,
        TransactionStatus? transactionStatus,
        String? transactionType,
        String? amount,
        String? secondaryAmount,
    }) => 
        TransactionGRpcModel(
            transactionId: transactionId ?? this.transactionId,
            transactionStatus: transactionStatus ?? this.transactionStatus,
            transactionType: transactionType ?? this.transactionType,
            amount: amount ?? this.amount,
            secondaryAmount: secondaryAmount ?? this.secondaryAmount,
        );

    factory TransactionGRpcModel.fromJson(String str) => TransactionGRpcModel.fromMap(json.decode(str));

    @override
      String toJson() => json.encode(toMap());

    factory TransactionGRpcModel.fromMap(Map<String, dynamic> json) => TransactionGRpcModel(
        transactionId: json["transactionId"],
        transactionStatus:   json["transactionStatus"],
        transactionType: json["transactionType"],
        amount: json["amount"],
        secondaryAmount: json["secondaryAmount"],
    );

    @override
      Map<String, dynamic> toMap() => {
        "transactionId": transactionId,
        "transactionStatus":TransactionStatus.values[transactionStatus.value] ,
        "transactionType": transactionType,
        "amount": amount,
        "secondaryAmount": secondaryAmount,
    };
}
