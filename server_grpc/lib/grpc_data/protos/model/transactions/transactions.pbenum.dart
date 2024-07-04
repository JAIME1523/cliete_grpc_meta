//
//  Generated code. Do not modify.
//  source: transactions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TransactionType extends $pb.ProtobufEnum {
  static const TransactionType Sale = TransactionType._(0, _omitEnumNames ? '' : 'Sale');

  static const $core.List<TransactionType> values = <TransactionType> [
    Sale,
  ];

  static final $core.Map<$core.int, TransactionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionType? valueOf($core.int value) => _byValue[value];

  const TransactionType._($core.int v, $core.String n) : super(v, n);
}

class TransactionStatus extends $pb.ProtobufEnum {
  static const TransactionStatus Pending = TransactionStatus._(0, _omitEnumNames ? '' : 'Pending');
  static const TransactionStatus Failed = TransactionStatus._(1, _omitEnumNames ? '' : 'Failed');
  static const TransactionStatus Cancelled = TransactionStatus._(2, _omitEnumNames ? '' : 'Cancelled');
  static const TransactionStatus Denied = TransactionStatus._(3, _omitEnumNames ? '' : 'Denied');
  static const TransactionStatus Approved = TransactionStatus._(4, _omitEnumNames ? '' : 'Approved');

  static const $core.List<TransactionStatus> values = <TransactionStatus> [
    Pending,
    Failed,
    Cancelled,
    Denied,
    Approved,
  ];

  static final $core.Map<$core.int, TransactionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionStatus? valueOf($core.int value) => _byValue[value];

  const TransactionStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
