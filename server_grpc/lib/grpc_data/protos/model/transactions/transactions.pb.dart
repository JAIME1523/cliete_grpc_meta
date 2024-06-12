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
    $core.String? id,
    TransactionStatus? status,
    TransactionType? type,
    $core.int? amount,
    $core.String? referenceNumber,
    $core.String? arqc,
    $core.String? maskPan,
    $core.String? authorizationNumber,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
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
    return $result;
  }
  Transaction._() : super();
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Transaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<TransactionStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TransactionStatus.Pending, valueOf: TransactionStatus.valueOf, enumValues: TransactionStatus.values)
    ..e<TransactionType>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TransactionType.Sale, valueOf: TransactionType.valueOf, enumValues: TransactionType.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'referenceNumber', protoName: 'referenceNumber')
    ..aOS(6, _omitFieldNames ? '' : 'arqc')
    ..aOS(7, _omitFieldNames ? '' : 'maskPan', protoName: 'maskPan')
    ..aOS(8, _omitFieldNames ? '' : 'authorizationNumber', protoName: 'authorizationNumber')
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  TransactionStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(TransactionStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  TransactionType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(TransactionType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get amount => $_getIZ(3);
  @$pb.TagNumber(4)
  set amount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get referenceNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set referenceNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReferenceNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearReferenceNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get arqc => $_getSZ(5);
  @$pb.TagNumber(6)
  set arqc($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasArqc() => $_has(5);
  @$pb.TagNumber(6)
  void clearArqc() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get maskPan => $_getSZ(6);
  @$pb.TagNumber(7)
  set maskPan($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaskPan() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaskPan() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get authorizationNumber => $_getSZ(7);
  @$pb.TagNumber(8)
  set authorizationNumber($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAuthorizationNumber() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthorizationNumber() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
