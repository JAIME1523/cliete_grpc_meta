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

import 'transactions.pbenum.dart';

export 'transactions.pbenum.dart';

class Transaction extends $pb.GeneratedMessage {
  factory Transaction({
    TransactionStatus? status,
    TransactionType? type,
    $core.int? amount,
    $core.String? referenceNumber,
    $core.String? arqc,
    $core.String? maskPan,
    $core.String? authorizationNumber,
    $core.String? stan,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (type != null) {
      $result.type = type;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (referenceNumber != null) {
      $result.referenceNumber = referenceNumber;
    }
    if (arqc != null) {
      $result.arqc = arqc;
    }
    if (maskPan != null) {
      $result.maskPan = maskPan;
    }
    if (authorizationNumber != null) {
      $result.authorizationNumber = authorizationNumber;
    }
    if (stan != null) {
      $result.stan = stan;
    }
    return $result;
  }
  Transaction._() : super();
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Transaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..e<TransactionStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TransactionStatus.Pending, valueOf: TransactionStatus.valueOf, enumValues: TransactionStatus.values)
    ..e<TransactionType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TransactionType.Sale, valueOf: TransactionType.valueOf, enumValues: TransactionType.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'referenceNumber', protoName: 'referenceNumber')
    ..aOS(5, _omitFieldNames ? '' : 'arqc')
    ..aOS(6, _omitFieldNames ? '' : 'maskPan', protoName: 'maskPan')
    ..aOS(7, _omitFieldNames ? '' : 'authorizationNumber', protoName: 'authorizationNumber')
    ..aOS(8, _omitFieldNames ? '' : 'stan')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(TransactionStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  TransactionType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(TransactionType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get referenceNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set referenceNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReferenceNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearReferenceNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get arqc => $_getSZ(4);
  @$pb.TagNumber(5)
  set arqc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasArqc() => $_has(4);
  @$pb.TagNumber(5)
  void clearArqc() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get maskPan => $_getSZ(5);
  @$pb.TagNumber(6)
  set maskPan($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaskPan() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaskPan() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get authorizationNumber => $_getSZ(6);
  @$pb.TagNumber(7)
  set authorizationNumber($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAuthorizationNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthorizationNumber() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stan => $_getSZ(7);
  @$pb.TagNumber(8)
  set stan($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStan() => $_has(7);
  @$pb.TagNumber(8)
  void clearStan() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
