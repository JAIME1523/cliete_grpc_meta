//
//  Generated code. Do not modify.
//  source: test_conect.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TestConnectionReesponse extends $pb.GeneratedMessage {
  factory TestConnectionReesponse({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  TestConnectionReesponse._() : super();
  factory TestConnectionReesponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestConnectionReesponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TestConnectionReesponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestConnectionReesponse clone() => TestConnectionReesponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestConnectionReesponse copyWith(void Function(TestConnectionReesponse) updates) => super.copyWith((message) => updates(message as TestConnectionReesponse)) as TestConnectionReesponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestConnectionReesponse create() => TestConnectionReesponse._();
  TestConnectionReesponse createEmptyInstance() => create();
  static $pb.PbList<TestConnectionReesponse> createRepeated() => $pb.PbList<TestConnectionReesponse>();
  @$core.pragma('dart2js:noInline')
  static TestConnectionReesponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestConnectionReesponse>(create);
  static TestConnectionReesponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RequestClientInfo extends $pb.GeneratedMessage {
  factory RequestClientInfo({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  RequestClientInfo._() : super();
  factory RequestClientInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestClientInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestClientInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'agnostiko_meta'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestClientInfo clone() => RequestClientInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestClientInfo copyWith(void Function(RequestClientInfo) updates) => super.copyWith((message) => updates(message as RequestClientInfo)) as RequestClientInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestClientInfo create() => RequestClientInfo._();
  RequestClientInfo createEmptyInstance() => create();
  static $pb.PbList<RequestClientInfo> createRepeated() => $pb.PbList<RequestClientInfo>();
  @$core.pragma('dart2js:noInline')
  static RequestClientInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestClientInfo>(create);
  static RequestClientInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
