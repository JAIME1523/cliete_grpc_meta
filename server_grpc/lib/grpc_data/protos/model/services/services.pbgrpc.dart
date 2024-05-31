//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../message/messages.pb.dart' as $0;
import  '../test/test_conect.pb.dart' as $1;
export 'services.pb.dart';

@$pb.GrpcServiceName('agnostiko_meta.MetaApp')
class MetaAppClient extends $grpc.Client {
  static final _$registerTransaction = $grpc.ClientMethod<$0.RegisterTransactionRequest, $0.RegisterTransactionResponse>(
      '/agnostiko_meta.MetaApp/RegisterTransaction',
      ($0.RegisterTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RegisterTransactionResponse.fromBuffer(value));
  static final _$startTransaction = $grpc.ClientMethod<$0.StartTransactionRequest, $0.TransactionNotification>(
      '/agnostiko_meta.MetaApp/StartTransaction',
      ($0.StartTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TransactionNotification.fromBuffer(value));
  static final _$getStatus = $grpc.ClientMethod<$0.GetStatusRequest, $0.GetStatusResponse>(
      '/agnostiko_meta.MetaApp/GetStatus',
      ($0.GetStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStatusResponse.fromBuffer(value));
  static final _$getTransaction = $grpc.ClientMethod<$0.GetTransactionRequest, $0.GetTransactionResponse>(
      '/agnostiko_meta.MetaApp/GetTransaction',
      ($0.GetTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTransactionResponse.fromBuffer(value));
  static final _$testC = $grpc.ClientMethod<$1.RequestClientInfo, $1.TestConnectionReesponse>(
      '/agnostiko_meta.MetaApp/TestC',
      ($1.RequestClientInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TestConnectionReesponse.fromBuffer(value));

  MetaAppClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.RegisterTransactionResponse> registerTransaction($0.RegisterTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerTransaction, request, options: options);
  }

  $grpc.ResponseStream<$0.TransactionNotification> startTransaction($0.StartTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startTransaction, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.GetStatusResponse> getStatus($0.GetStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTransactionResponse> getTransaction($0.GetTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$1.TestConnectionReesponse> testC($1.RequestClientInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$testC, request, options: options);
  }
}

@$pb.GrpcServiceName('agnostiko_meta.MetaApp')
abstract class MetaAppServiceBase extends $grpc.Service {
  $core.String get $name => 'agnostiko_meta.MetaApp';

  MetaAppServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterTransactionRequest, $0.RegisterTransactionResponse>(
        'RegisterTransaction',
        registerTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterTransactionRequest.fromBuffer(value),
        ($0.RegisterTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StartTransactionRequest, $0.TransactionNotification>(
        'StartTransaction',
        startTransaction_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StartTransactionRequest.fromBuffer(value),
        ($0.TransactionNotification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStatusRequest, $0.GetStatusResponse>(
        'GetStatus',
        getStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStatusRequest.fromBuffer(value),
        ($0.GetStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTransactionRequest, $0.GetTransactionResponse>(
        'GetTransaction',
        getTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTransactionRequest.fromBuffer(value),
        ($0.GetTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestClientInfo, $1.TestConnectionReesponse>(
        'TestC',
        testC_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RequestClientInfo.fromBuffer(value),
        ($1.TestConnectionReesponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterTransactionResponse> registerTransaction_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterTransactionRequest> request) async {
    return registerTransaction(call, await request);
  }

  $async.Stream<$0.TransactionNotification> startTransaction_Pre($grpc.ServiceCall call, $async.Future<$0.StartTransactionRequest> request) async* {
    yield* startTransaction(call, await request);
  }

  $async.Future<$0.GetStatusResponse> getStatus_Pre($grpc.ServiceCall call, $async.Future<$0.GetStatusRequest> request) async {
    return getStatus(call, await request);
  }

  $async.Future<$0.GetTransactionResponse> getTransaction_Pre($grpc.ServiceCall call, $async.Future<$0.GetTransactionRequest> request) async {
    return getTransaction(call, await request);
  }

  $async.Future<$1.TestConnectionReesponse> testC_Pre($grpc.ServiceCall call, $async.Future<$1.RequestClientInfo> request) async {
    return testC(call, await request);
  }

  $async.Future<$0.RegisterTransactionResponse> registerTransaction($grpc.ServiceCall call, $0.RegisterTransactionRequest request);
  $async.Stream<$0.TransactionNotification> startTransaction($grpc.ServiceCall call, $0.StartTransactionRequest request);
  $async.Future<$0.GetStatusResponse> getStatus($grpc.ServiceCall call, $0.GetStatusRequest request);
  $async.Future<$0.GetTransactionResponse> getTransaction($grpc.ServiceCall call, $0.GetTransactionRequest request);
  $async.Future<$1.TestConnectionReesponse> testC($grpc.ServiceCall call, $1.RequestClientInfo request);
}
