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

import 'messages.pbenum.dart';
import '../transactions/transactions.pb.dart' as $0;
import '../transactions/transactions.pbenum.dart' as $0;

export 'messages.pbenum.dart';

class MetaError extends $pb.GeneratedMessage {
  factory MetaError({
    MetaErrorCode? code,
    $core.String? errorMsg,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (errorMsg != null) {
      $result.errorMsg = errorMsg;
    }
    return $result;
  }
  MetaError._() : super();
  factory MetaError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetaError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetaError', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..e<MetaErrorCode>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: MetaErrorCode.InternalError, valueOf: MetaErrorCode.valueOf, enumValues: MetaErrorCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'errorMsg', protoName: 'errorMsg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetaError clone() => MetaError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetaError copyWith(void Function(MetaError) updates) => super.copyWith((message) => updates(message as MetaError)) as MetaError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetaError create() => MetaError._();
  MetaError createEmptyInstance() => create();
  static $pb.PbList<MetaError> createRepeated() => $pb.PbList<MetaError>();
  @$core.pragma('dart2js:noInline')
  static MetaError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetaError>(create);
  static MetaError? _defaultInstance;

  @$pb.TagNumber(1)
  MetaErrorCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(MetaErrorCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMsg() => clearField(2);
}

class RegisterClientRequest extends $pb.GeneratedMessage {
  factory RegisterClientRequest({
    $core.String? randomCode,
    $core.String? publicKey,
  }) {
    final $result = create();
    if (randomCode != null) {
      $result.randomCode = randomCode;
    }
    if (publicKey != null) {
      $result.publicKey = publicKey;
    }
    return $result;
  }
  RegisterClientRequest._() : super();
  factory RegisterClientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterClientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterClientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'randomCode', protoName: 'randomCode')
    ..aOS(2, _omitFieldNames ? '' : 'publicKey', protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterClientRequest clone() => RegisterClientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterClientRequest copyWith(void Function(RegisterClientRequest) updates) => super.copyWith((message) => updates(message as RegisterClientRequest)) as RegisterClientRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterClientRequest create() => RegisterClientRequest._();
  RegisterClientRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterClientRequest> createRepeated() => $pb.PbList<RegisterClientRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterClientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterClientRequest>(create);
  static RegisterClientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get randomCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set randomCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRandomCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRandomCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get publicKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set publicKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublicKey() => clearField(2);
}

class RegisterClientResponse extends $pb.GeneratedMessage {
  factory RegisterClientResponse({
    $core.String? macLabel,
    $core.List<$core.int>? macKey,
    MetaError? error,
  }) {
    final $result = create();
    if (macLabel != null) {
      $result.macLabel = macLabel;
    }
    if (macKey != null) {
      $result.macKey = macKey;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  RegisterClientResponse._() : super();
  factory RegisterClientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterClientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterClientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'macLabel', protoName: 'macLabel')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'macKey', $pb.PbFieldType.OY, protoName: 'macKey')
    ..aOM<MetaError>(3, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterClientResponse clone() => RegisterClientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterClientResponse copyWith(void Function(RegisterClientResponse) updates) => super.copyWith((message) => updates(message as RegisterClientResponse)) as RegisterClientResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterClientResponse create() => RegisterClientResponse._();
  RegisterClientResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterClientResponse> createRepeated() => $pb.PbList<RegisterClientResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterClientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterClientResponse>(create);
  static RegisterClientResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get macLabel => $_getSZ(0);
  @$pb.TagNumber(1)
  set macLabel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get macKey => $_getN(1);
  @$pb.TagNumber(2)
  set macKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacKey() => clearField(2);

  @$pb.TagNumber(3)
  MetaError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(MetaError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  MetaError ensureError() => $_ensure(2);
}

class AuthData extends $pb.GeneratedMessage {
  factory AuthData({
    $core.int? counter,
    $core.String? macLabel,
    $core.List<$core.int>? mac,
  }) {
    final $result = create();
    if (counter != null) {
      $result.counter = counter;
    }
    if (macLabel != null) {
      $result.macLabel = macLabel;
    }
    if (mac != null) {
      $result.mac = mac;
    }
    return $result;
  }
  AuthData._() : super();
  factory AuthData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthData', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'counter', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'macLabel', protoName: 'macLabel')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'mac', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthData clone() => AuthData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthData copyWith(void Function(AuthData) updates) => super.copyWith((message) => updates(message as AuthData)) as AuthData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthData create() => AuthData._();
  AuthData createEmptyInstance() => create();
  static $pb.PbList<AuthData> createRepeated() => $pb.PbList<AuthData>();
  @$core.pragma('dart2js:noInline')
  static AuthData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthData>(create);
  static AuthData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get counter => $_getIZ(0);
  @$pb.TagNumber(1)
  set counter($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCounter() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macLabel => $_getSZ(1);
  @$pb.TagNumber(2)
  set macLabel($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacLabel() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get mac => $_getN(2);
  @$pb.TagNumber(3)
  set mac($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMac() => $_has(2);
  @$pb.TagNumber(3)
  void clearMac() => clearField(3);
}

class RegisterTransactionRequest extends $pb.GeneratedMessage {
  factory RegisterTransactionRequest({
    $0.Transaction? transaction,
    $core.String? origin,
    AuthData? authData,
  }) {
    final $result = create();
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (origin != null) {
      $result.origin = origin;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  RegisterTransactionRequest._() : super();
  factory RegisterTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterTransactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOM<$0.Transaction>(1, _omitFieldNames ? '' : 'transaction', subBuilder: $0.Transaction.create)
    ..aOS(2, _omitFieldNames ? '' : 'origin')
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterTransactionRequest clone() => RegisterTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterTransactionRequest copyWith(void Function(RegisterTransactionRequest) updates) => super.copyWith((message) => updates(message as RegisterTransactionRequest)) as RegisterTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterTransactionRequest create() => RegisterTransactionRequest._();
  RegisterTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterTransactionRequest> createRepeated() => $pb.PbList<RegisterTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterTransactionRequest>(create);
  static RegisterTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction($0.Transaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  $0.Transaction ensureTransaction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get origin => $_getSZ(1);
  @$pb.TagNumber(2)
  set origin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => clearField(2);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}

class RegisterTransactionResponse extends $pb.GeneratedMessage {
  factory RegisterTransactionResponse({
    $core.String? id,
    MetaError? error,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (error != null) {
      $result.error = error;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  RegisterTransactionResponse._() : super();
  factory RegisterTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<MetaError>(2, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterTransactionResponse clone() => RegisterTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterTransactionResponse copyWith(void Function(RegisterTransactionResponse) updates) => super.copyWith((message) => updates(message as RegisterTransactionResponse)) as RegisterTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterTransactionResponse create() => RegisterTransactionResponse._();
  RegisterTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterTransactionResponse> createRepeated() => $pb.PbList<RegisterTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterTransactionResponse>(create);
  static RegisterTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  MetaError get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(MetaError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  MetaError ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}

class StartTransactionRequest extends $pb.GeneratedMessage {
  factory StartTransactionRequest({
    $core.String? id,
    $core.String? origin,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (origin != null) {
      $result.origin = origin;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  StartTransactionRequest._() : super();
  factory StartTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartTransactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'origin')
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartTransactionRequest clone() => StartTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartTransactionRequest copyWith(void Function(StartTransactionRequest) updates) => super.copyWith((message) => updates(message as StartTransactionRequest)) as StartTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartTransactionRequest create() => StartTransactionRequest._();
  StartTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<StartTransactionRequest> createRepeated() => $pb.PbList<StartTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static StartTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartTransactionRequest>(create);
  static StartTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get origin => $_getSZ(1);
  @$pb.TagNumber(2)
  set origin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => clearField(2);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}

class TransactionNotification extends $pb.GeneratedMessage {
  factory TransactionNotification({
    $core.String? id,
    $0.Transaction? transaction,
    MetaError? error,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (error != null) {
      $result.error = error;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  TransactionNotification._() : super();
  factory TransactionNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionNotification', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.Transaction>(2, _omitFieldNames ? '' : 'transaction', subBuilder: $0.Transaction.create)
    ..aOM<MetaError>(3, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..aOM<AuthData>(4, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionNotification clone() => TransactionNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionNotification copyWith(void Function(TransactionNotification) updates) => super.copyWith((message) => updates(message as TransactionNotification)) as TransactionNotification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionNotification create() => TransactionNotification._();
  TransactionNotification createEmptyInstance() => create();
  static $pb.PbList<TransactionNotification> createRepeated() => $pb.PbList<TransactionNotification>();
  @$core.pragma('dart2js:noInline')
  static TransactionNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionNotification>(create);
  static TransactionNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.Transaction get transaction => $_getN(1);
  @$pb.TagNumber(2)
  set transaction($0.Transaction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransaction() => clearField(2);
  @$pb.TagNumber(2)
  $0.Transaction ensureTransaction() => $_ensure(1);

  @$pb.TagNumber(3)
  MetaError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(MetaError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  MetaError ensureError() => $_ensure(2);

  @$pb.TagNumber(4)
  AuthData get authData => $_getN(3);
  @$pb.TagNumber(4)
  set authData(AuthData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthData() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthData() => clearField(4);
  @$pb.TagNumber(4)
  AuthData ensureAuthData() => $_ensure(3);
}

class GetTransactionRequest extends $pb.GeneratedMessage {
  factory GetTransactionRequest({
    $core.String? id,
    $core.String? origin,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (origin != null) {
      $result.origin = origin;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  GetTransactionRequest._() : super();
  factory GetTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'origin')
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionRequest clone() => GetTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionRequest copyWith(void Function(GetTransactionRequest) updates) => super.copyWith((message) => updates(message as GetTransactionRequest)) as GetTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionRequest create() => GetTransactionRequest._();
  GetTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionRequest> createRepeated() => $pb.PbList<GetTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionRequest>(create);
  static GetTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get origin => $_getSZ(1);
  @$pb.TagNumber(2)
  set origin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => clearField(2);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}

class GetTransactionResponse extends $pb.GeneratedMessage {
  factory GetTransactionResponse({
    $core.String? id,
    $0.Transaction? transaction,
    MetaError? error,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (error != null) {
      $result.error = error;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  GetTransactionResponse._() : super();
  factory GetTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.Transaction>(2, _omitFieldNames ? '' : 'transaction', subBuilder: $0.Transaction.create)
    ..aOM<MetaError>(3, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..aOM<AuthData>(4, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionResponse clone() => GetTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionResponse copyWith(void Function(GetTransactionResponse) updates) => super.copyWith((message) => updates(message as GetTransactionResponse)) as GetTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionResponse create() => GetTransactionResponse._();
  GetTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<GetTransactionResponse> createRepeated() => $pb.PbList<GetTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionResponse>(create);
  static GetTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.Transaction get transaction => $_getN(1);
  @$pb.TagNumber(2)
  set transaction($0.Transaction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransaction() => clearField(2);
  @$pb.TagNumber(2)
  $0.Transaction ensureTransaction() => $_ensure(1);

  @$pb.TagNumber(3)
  MetaError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(MetaError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  MetaError ensureError() => $_ensure(2);

  @$pb.TagNumber(4)
  AuthData get authData => $_getN(3);
  @$pb.TagNumber(4)
  set authData(AuthData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthData() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthData() => clearField(4);
  @$pb.TagNumber(4)
  AuthData ensureAuthData() => $_ensure(3);
}

class GetStatusRequest extends $pb.GeneratedMessage {
  factory GetStatusRequest({
    $core.String? id,
    $core.String? origin,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (origin != null) {
      $result.origin = origin;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  GetStatusRequest._() : super();
  factory GetStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'origin')
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusRequest clone() => GetStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusRequest copyWith(void Function(GetStatusRequest) updates) => super.copyWith((message) => updates(message as GetStatusRequest)) as GetStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStatusRequest create() => GetStatusRequest._();
  GetStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetStatusRequest> createRepeated() => $pb.PbList<GetStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusRequest>(create);
  static GetStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get origin => $_getSZ(1);
  @$pb.TagNumber(2)
  set origin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => clearField(2);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}

class GetStatusResponse extends $pb.GeneratedMessage {
  factory GetStatusResponse({
    $core.String? id,
    $0.TransactionStatus? status,
    MetaError? error,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (status != null) {
      $result.status = status;
    }
    if (error != null) {
      $result.error = error;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  GetStatusResponse._() : super();
  factory GetStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$0.TransactionStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $0.TransactionStatus.Pending, valueOf: $0.TransactionStatus.valueOf, enumValues: $0.TransactionStatus.values)
    ..aOM<MetaError>(3, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..aOM<AuthData>(4, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatusResponse clone() => GetStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatusResponse copyWith(void Function(GetStatusResponse) updates) => super.copyWith((message) => updates(message as GetStatusResponse)) as GetStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStatusResponse create() => GetStatusResponse._();
  GetStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GetStatusResponse> createRepeated() => $pb.PbList<GetStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatusResponse>(create);
  static GetStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.TransactionStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($0.TransactionStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  MetaError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(MetaError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  MetaError ensureError() => $_ensure(2);

  @$pb.TagNumber(4)
  AuthData get authData => $_getN(3);
  @$pb.TagNumber(4)
  set authData(AuthData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthData() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthData() => clearField(4);
  @$pb.TagNumber(4)
  AuthData ensureAuthData() => $_ensure(3);
}

class CancelRequest extends $pb.GeneratedMessage {
  factory CancelRequest({
    $core.String? id,
    $0.Transaction? transaction,
    $core.String? origin,
    AuthData? authData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (origin != null) {
      $result.origin = origin;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  CancelRequest._() : super();
  factory CancelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.Transaction>(2, _omitFieldNames ? '' : 'transaction', subBuilder: $0.Transaction.create)
    ..aOS(3, _omitFieldNames ? '' : 'origin')
    ..aOM<AuthData>(4, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelRequest clone() => CancelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelRequest copyWith(void Function(CancelRequest) updates) => super.copyWith((message) => updates(message as CancelRequest)) as CancelRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelRequest create() => CancelRequest._();
  CancelRequest createEmptyInstance() => create();
  static $pb.PbList<CancelRequest> createRepeated() => $pb.PbList<CancelRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelRequest>(create);
  static CancelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.Transaction get transaction => $_getN(1);
  @$pb.TagNumber(2)
  set transaction($0.Transaction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransaction() => clearField(2);
  @$pb.TagNumber(2)
  $0.Transaction ensureTransaction() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get origin => $_getSZ(2);
  @$pb.TagNumber(3)
  set origin($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrigin() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrigin() => clearField(3);

  @$pb.TagNumber(4)
  AuthData get authData => $_getN(3);
  @$pb.TagNumber(4)
  set authData(AuthData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthData() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthData() => clearField(4);
  @$pb.TagNumber(4)
  AuthData ensureAuthData() => $_ensure(3);
}

class CancelNotification extends $pb.GeneratedMessage {
  factory CancelNotification({
    $0.TransactionStatus? status,
    MetaError? error,
    AuthData? authData,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (error != null) {
      $result.error = error;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  CancelNotification._() : super();
  factory CancelNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelNotification', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..e<$0.TransactionStatus>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $0.TransactionStatus.Pending, valueOf: $0.TransactionStatus.valueOf, enumValues: $0.TransactionStatus.values)
    ..aOM<MetaError>(2, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelNotification clone() => CancelNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelNotification copyWith(void Function(CancelNotification) updates) => super.copyWith((message) => updates(message as CancelNotification)) as CancelNotification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelNotification create() => CancelNotification._();
  CancelNotification createEmptyInstance() => create();
  static $pb.PbList<CancelNotification> createRepeated() => $pb.PbList<CancelNotification>();
  @$core.pragma('dart2js:noInline')
  static CancelNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelNotification>(create);
  static CancelNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $0.TransactionStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($0.TransactionStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  MetaError get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(MetaError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  MetaError ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}

class CancelProcessRequest extends $pb.GeneratedMessage {
  factory CancelProcessRequest({
    $core.String? origin,
    AuthData? authData,
  }) {
    final $result = create();
    if (origin != null) {
      $result.origin = origin;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  CancelProcessRequest._() : super();
  factory CancelProcessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelProcessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelProcessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'origin')
    ..aOM<AuthData>(2, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelProcessRequest clone() => CancelProcessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelProcessRequest copyWith(void Function(CancelProcessRequest) updates) => super.copyWith((message) => updates(message as CancelProcessRequest)) as CancelProcessRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelProcessRequest create() => CancelProcessRequest._();
  CancelProcessRequest createEmptyInstance() => create();
  static $pb.PbList<CancelProcessRequest> createRepeated() => $pb.PbList<CancelProcessRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelProcessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelProcessRequest>(create);
  static CancelProcessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get origin => $_getSZ(0);
  @$pb.TagNumber(1)
  set origin($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrigin() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrigin() => clearField(1);

  @$pb.TagNumber(2)
  AuthData get authData => $_getN(1);
  @$pb.TagNumber(2)
  set authData(AuthData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthData() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthData() => clearField(2);
  @$pb.TagNumber(2)
  AuthData ensureAuthData() => $_ensure(1);
}

class CancelProcessResponse extends $pb.GeneratedMessage {
  factory CancelProcessResponse({
    $core.bool? successes,
    MetaError? error,
    AuthData? authData,
  }) {
    final $result = create();
    if (successes != null) {
      $result.successes = successes;
    }
    if (error != null) {
      $result.error = error;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    return $result;
  }
  CancelProcessResponse._() : super();
  factory CancelProcessResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelProcessResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelProcessResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'successes')
    ..aOM<MetaError>(2, _omitFieldNames ? '' : 'error', subBuilder: MetaError.create)
    ..aOM<AuthData>(3, _omitFieldNames ? '' : 'authData', protoName: 'authData', subBuilder: AuthData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelProcessResponse clone() => CancelProcessResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelProcessResponse copyWith(void Function(CancelProcessResponse) updates) => super.copyWith((message) => updates(message as CancelProcessResponse)) as CancelProcessResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelProcessResponse create() => CancelProcessResponse._();
  CancelProcessResponse createEmptyInstance() => create();
  static $pb.PbList<CancelProcessResponse> createRepeated() => $pb.PbList<CancelProcessResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelProcessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelProcessResponse>(create);
  static CancelProcessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get successes => $_getBF(0);
  @$pb.TagNumber(1)
  set successes($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccesses() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccesses() => clearField(1);

  @$pb.TagNumber(2)
  MetaError get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(MetaError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  MetaError ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  AuthData get authData => $_getN(2);
  @$pb.TagNumber(3)
  set authData(AuthData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthData() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthData() => clearField(3);
  @$pb.TagNumber(3)
  AuthData ensureAuthData() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
