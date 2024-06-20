//
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MetaErrorCode extends $pb.ProtobufEnum {
  static const MetaErrorCode InternalError = MetaErrorCode._(0, _omitEnumNames ? '' : 'InternalError');
  static const MetaErrorCode WrongId = MetaErrorCode._(1, _omitEnumNames ? '' : 'WrongId');
  static const MetaErrorCode TransactionCompleted = MetaErrorCode._(2, _omitEnumNames ? '' : 'TransactionCompleted');
  static const MetaErrorCode AuthError = MetaErrorCode._(3, _omitEnumNames ? '' : 'AuthError');
  static const MetaErrorCode InvalidCounter = MetaErrorCode._(4, _omitEnumNames ? '' : 'InvalidCounter');
  static const MetaErrorCode PublicKeyError = MetaErrorCode._(5, _omitEnumNames ? '' : 'PublicKeyError');
  static const MetaErrorCode WrongRandomCode = MetaErrorCode._(6, _omitEnumNames ? '' : 'WrongRandomCode');

  static const $core.List<MetaErrorCode> values = <MetaErrorCode> [
    InternalError,
    WrongId,
    TransactionCompleted,
    AuthError,
    InvalidCounter,
    PublicKeyError,
    WrongRandomCode,
  ];

  static final $core.Map<$core.int, MetaErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetaErrorCode? valueOf($core.int value) => _byValue[value];

  const MetaErrorCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
