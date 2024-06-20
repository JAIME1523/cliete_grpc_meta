import 'dart:convert';

import 'package:server_grpc/database/models/data_model.dart';
import 'package:server_grpc/grpc_data/grpc_data.dart';

class TransactionGRpcModel extends DataDbM {
   
  final String? idProtoTransaction;

  final TransactionStatus? status;
  TransactionType? type;
  final int amount;
  String? referenceNumber;
  String? arqc;
  String? maskPan;
  String? authorizationNumber;

  TransactionGRpcModel(
      {
      this.status,
      this.type,
      this.idProtoTransaction,
      required this.amount,
      this.referenceNumber,
      this.arqc,
      this.maskPan,
      this.authorizationNumber});

  TransactionGRpcModel copyWith({
    TransactionStatus? status,
    TransactionType? type,
    int? amount,
    String? referenceNumber,
    String? arqc,
    String? idProtoTransaction,
    String? maskPan,
    String? authorizationNumber,
  }) =>
      TransactionGRpcModel(
          status              : status ?? this.status,
          type                : type ?? this.type,
          amount              : amount ?? this.amount,
          referenceNumber     : referenceNumber ?? this.referenceNumber,
          arqc                : arqc ?? this.arqc,
          maskPan             : maskPan ?? maskPan,
          idProtoTransaction             : idProtoTransaction ?? this.idProtoTransaction,
          authorizationNumber : authorizationNumber ?? this.authorizationNumber);

  factory TransactionGRpcModel.fromJson(String str) =>
      TransactionGRpcModel.fromMap(json.decode(str));

  @override
  String toJson() => json.encode(toMap());
  String toJsonGrpc() => json.encode(toMapGrpc());

  factory TransactionGRpcModel.fromMap(Map<String, dynamic> json) =>
      TransactionGRpcModel(
        // transactionId: json["transactionId"],
        status              : statusValues.map[json["status"]]!,
        type                : typeValues.map[json["type"]],
        amount              : int.tryParse(json["amount"]) ?? 0,
        referenceNumber     : json["referenceNumber"],
        arqc                : json["arqc"],
        maskPan             : json["maskPan"],
        idProtoTransaction             : json["idProto"],
        authorizationNumber : json["authorizationNumber"],
      );
  factory TransactionGRpcModel.fromMapByGrpc(Map<String, dynamic> json) {
    return TransactionGRpcModel(
      // transactionId: json["transactionId"],
      //idProto             : json["1"],
      status              : TransactionStatus.valueOf(json["1"]),
      type                : TransactionType.valueOf(json["2"]),
      amount              : json["3"],
      referenceNumber     : json["4"],
      arqc                : json["5"],
      maskPan             : json["6"],
      authorizationNumber : json["7"],
    );
  }
  @override
  Map<String, dynamic> toMap() => {
        //"transactionId": transactionId,
        "idProto"             : idProtoTransaction,
        "status"              : statusValues.reverse[status],
        "type"                : typeValues.reverse[type],
        "amount"              : amount,
        "referenceNumber"     : referenceNumber,
        "arqc"                : arqc,
        "maskPan"             : maskPan,
        "authorizationNumber" : authorizationNumber
      };
  Map<String, dynamic> toMapGrpc() => {
        //"transactionId": transactionId,
        //"1": idProto,
        "1": status!.value,
        "2": type!.value,
        "3": amount,
        if (referenceNumber != null)       "4": referenceNumber,
        if (arqc != null)                  "5": arqc,
        if (maskPan != null)               "6": maskPan,
        if (authorizationNumber != null)   "7": authorizationNumber
      };
}

final typeValues = EnumValues({
  "Sale": TransactionType.Sale,
});

final statusValues = EnumValues({
  "Pending"   : TransactionStatus.Pending,
  "Failed"    : TransactionStatus.Failed,
  "Cancelled" : TransactionStatus.Cancelled,
  "Denied"    : TransactionStatus.Denied,
  "Approved"  : TransactionStatus.Approved,
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
