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
import '../test/test_conect.pb.dart' as $1;

export 'services.pb.dart';

@$pb.GrpcServiceName('agnostiko_meta.MetaApp')
class MetaAppClient extends $grpc.Client {
  static final _$registerClient = $grpc.ClientMethod<$0.RegisterClientRequest, $0.RegisterClientResponse>(
      '/agnostiko_meta.MetaApp/RegisterClient',
      ($0.RegisterClientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RegisterClientResponse.fromBuffer(value));
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
  static final _$cancelTransaction = $grpc.ClientMethod<$0.CancelRequest, $0.CancelNotification>(
      '/agnostiko_meta.MetaApp/CancelTransaction',
      ($0.CancelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CancelNotification.fromBuffer(value));
  static final _$cancelProcessTransaction = $grpc.ClientMethod<$0.CancelProcessRequest, $0.CancelProcessResponse>(
      '/agnostiko_meta.MetaApp/CancelProcessTransaction',
      ($0.CancelProcessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CancelProcessResponse.fromBuffer(value));
  static final _$testC = $grpc.ClientMethod<$1.RequestClientInfo, $1.TestConnectionReesponse>(
      '/agnostiko_meta.MetaApp/TestC',
      ($1.RequestClientInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TestConnectionReesponse.fromBuffer(value));

  MetaAppClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.RegisterClientResponse> registerClient($0.RegisterClientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerClient, request, options: options);
  }

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

  $grpc.ResponseStream<$0.CancelNotification> cancelTransaction($0.CancelRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$cancelTransaction, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.CancelProcessResponse> cancelProcessTransaction($0.CancelProcessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelProcessTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$1.TestConnectionReesponse> testC($1.RequestClientInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$testC, request, options: options);
  }
}

@$pb.GrpcServiceName('agnostiko_meta.MetaApp')
abstract class MetaAppServiceBase extends $grpc.Service {
  $core.String get $name => 'agnostiko_meta.MetaApp';

  MetaAppServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterClientRequest, $0.RegisterClientResponse>(
        'RegisterClient',
        registerClient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterClientRequest.fromBuffer(value),
        ($0.RegisterClientResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.CancelRequest, $0.CancelNotification>(
        'CancelTransaction',
        cancelTransaction_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.CancelRequest.fromBuffer(value),
        ($0.CancelNotification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CancelProcessRequest, $0.CancelProcessResponse>(
        'CancelProcessTransaction',
        cancelProcessTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CancelProcessRequest.fromBuffer(value),
        ($0.CancelProcessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestClientInfo, $1.TestConnectionReesponse>(
        'TestC',
        testC_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RequestClientInfo.fromBuffer(value),
        ($1.TestConnectionReesponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterClientResponse> registerClient_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterClientRequest> request) async {
    return registerClient(call, await request);
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

  $async.Stream<$0.CancelNotification> cancelTransaction_Pre($grpc.ServiceCall call, $async.Future<$0.CancelRequest> request) async* {
    yield* cancelTransaction(call, await request);
  }

  $async.Future<$0.CancelProcessResponse> cancelProcessTransaction_Pre($grpc.ServiceCall call, $async.Future<$0.CancelProcessRequest> request) async {
    return cancelProcessTransaction(call, await request);
  }

  $async.Future<$1.TestConnectionReesponse> testC_Pre($grpc.ServiceCall call, $async.Future<$1.RequestClientInfo> request) async {
    return testC(call, await request);
  }

  $async.Future<$0.RegisterClientResponse> registerClient($grpc.ServiceCall call, $0.RegisterClientRequest request);
  $async.Future<$0.RegisterTransactionResponse> registerTransaction($grpc.ServiceCall call, $0.RegisterTransactionRequest request);
  $async.Stream<$0.TransactionNotification> startTransaction($grpc.ServiceCall call, $0.StartTransactionRequest request);
  $async.Future<$0.GetStatusResponse> getStatus($grpc.ServiceCall call, $0.GetStatusRequest request);
  $async.Future<$0.GetTransactionResponse> getTransaction($grpc.ServiceCall call, $0.GetTransactionRequest request);
  $async.Stream<$0.CancelNotification> cancelTransaction($grpc.ServiceCall call, $0.CancelRequest request);
  $async.Future<$0.CancelProcessResponse> cancelProcessTransaction($grpc.ServiceCall call, $0.CancelProcessRequest request);
  $async.Future<$1.TestConnectionReesponse> testC($grpc.ServiceCall call, $1.RequestClientInfo request);
}
