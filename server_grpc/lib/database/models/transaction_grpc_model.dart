import 'dart:convert';

import 'package:server_grpc/database/models/data_model.dart';
import 'package:server_grpc/grpc_data/grpc_data.dart';

class TransactionGRpcModel extends DataDbM {
  final dynamic transactionId;
    final dynamic idProto;
 
  final TransactionStatus? status;
  TransactionType? type;
  final String amount;
  final String? referenceNumber;
  final String? arqc;
  final String? maskPan;
  final String? authorizationNumber;


  TransactionGRpcModel( {
    this.transactionId,
    this.status,
    this.type,
    this.idProto,
    required this.amount,
    this.referenceNumber, this.arqc, this.maskPan,
    this.authorizationNumber
  });

  TransactionGRpcModel copyWith({
    dynamic transactionId,
    TransactionStatus? status,
    TransactionType? type,
    String? amount,
    String? referenceNumber,
    String? arqc,
    dynamic idProto,
    String? maskPan,
    String? authorizationNumber,
  }) =>
      TransactionGRpcModel(
        transactionId: transactionId ?? transactionId,
        status: status ?? this.status,
        type: type ?? this.type,
        amount: amount ?? this.amount,
        referenceNumber: referenceNumber ?? this.referenceNumber,
        arqc: arqc ?? this.arqc,
        maskPan: maskPan?? maskPan,
        idProto: idProto ?? this.idProto,
        authorizationNumber: authorizationNumber ?? this.authorizationNumber
      );

  factory TransactionGRpcModel.fromJson(String str) =>
      TransactionGRpcModel.fromMap(json.decode(str));

  @override
  String toJson() => json.encode(toMap());

  factory TransactionGRpcModel.fromMap(Map<String, dynamic> json) =>
      TransactionGRpcModel(
        transactionId: json["transactionId"],
        status: statusValues.map[json["status"]]!,
        type: typeValues.map[json["type"]],
        amount: json["amount"],
        referenceNumber: json["referenceNumber"],
        arqc: json["arqc"],
        maskPan: json["maskPan"],
        idProto: json["idProto"],
        authorizationNumber: json["authorizationNumber"],

        
      );

  @override
  Map<String, dynamic> toMap() => {
        "transactionId": transactionId,
        "idProto": idProto,
        "status": statusValues.reverse[status],
        "type": typeValues.reverse[type],
        "amount": amount,
        "referenceNumber": referenceNumber,
        "arqc": arqc,
        "maskPan": maskPan,
        "authorizationNumber":authorizationNumber
      };
}

final typeValues = EnumValues({
  "Sale": TransactionType.Sale,
});

final statusValues = EnumValues({
  "Pending": TransactionStatus.Pending,
  "Failed": TransactionStatus.Failed,
  "Cancelled": TransactionStatus.Cancelled,
  "Denied": TransactionStatus.Denied,
  "Approved": TransactionStatus.Approved,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
