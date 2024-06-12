//
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use metaErrorCodeDescriptor instead')
const MetaErrorCode$json = {
  '1': 'MetaErrorCode',
  '2': [
    {'1': 'InternalError', '2': 0},
    {'1': 'WrongId', '2': 1},
    {'1': 'TransactionCompleted', '2': 2},
    {'1': 'AuthError', '2': 3},
    {'1': 'InvalidCounter', '2': 4},
    {'1': 'PublicKeyError', '2': 5},
  ],
};

/// Descriptor for `MetaErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List metaErrorCodeDescriptor = $convert.base64Decode(
    'Cg1NZXRhRXJyb3JDb2RlEhEKDUludGVybmFsRXJyb3IQABILCgdXcm9uZ0lkEAESGAoUVHJhbn'
    'NhY3Rpb25Db21wbGV0ZWQQAhINCglBdXRoRXJyb3IQAxISCg5JbnZhbGlkQ291bnRlchAEEhIK'
    'DlB1YmxpY0tleUVycm9yEAU=');

@$core.Deprecated('Use metaErrorDescriptor instead')
const MetaError$json = {
  '1': 'MetaError',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.agnostiko_meta.MetaErrorCode', '10': 'code'},
    {'1': 'errorMsg', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'errorMsg', '17': true},
  ],
  '8': [
    {'1': '_errorMsg'},
  ],
};

/// Descriptor for `MetaError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaErrorDescriptor = $convert.base64Decode(
    'CglNZXRhRXJyb3ISMQoEY29kZRgBIAEoDjIdLmFnbm9zdGlrb19tZXRhLk1ldGFFcnJvckNvZG'
    'VSBGNvZGUSHwoIZXJyb3JNc2cYAiABKAlIAFIIZXJyb3JNc2eIAQFCCwoJX2Vycm9yTXNn');

@$core.Deprecated('Use registerClientRequestDescriptor instead')
const RegisterClientRequest$json = {
  '1': 'RegisterClientRequest',
  '2': [
    {'1': 'randomCode', '3': 1, '4': 1, '5': 9, '10': 'randomCode'},
    {'1': 'publicKey', '3': 2, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `RegisterClientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerClientRequestDescriptor = $convert.base64Decode(
    'ChVSZWdpc3RlckNsaWVudFJlcXVlc3QSHgoKcmFuZG9tQ29kZRgBIAEoCVIKcmFuZG9tQ29kZR'
    'IcCglwdWJsaWNLZXkYAiABKAlSCXB1YmxpY0tleQ==');

@$core.Deprecated('Use registerClientResponseDescriptor instead')
const RegisterClientResponse$json = {
  '1': 'RegisterClientResponse',
  '2': [
    {'1': 'macLabel', '3': 1, '4': 1, '5': 9, '10': 'macLabel'},
    {'1': 'macKey', '3': 2, '4': 1, '5': 12, '10': 'macKey'},
  ],
};

/// Descriptor for `RegisterClientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerClientResponseDescriptor = $convert.base64Decode(
    'ChZSZWdpc3RlckNsaWVudFJlc3BvbnNlEhoKCG1hY0xhYmVsGAEgASgJUghtYWNMYWJlbBIWCg'
    'ZtYWNLZXkYAiABKAxSBm1hY0tleQ==');

@$core.Deprecated('Use authDataDescriptor instead')
const AuthData$json = {
  '1': 'AuthData',
  '2': [
    {'1': 'counter', '3': 1, '4': 1, '5': 5, '10': 'counter'},
    {'1': 'macLabel', '3': 2, '4': 1, '5': 9, '10': 'macLabel'},
    {'1': 'mac', '3': 3, '4': 1, '5': 12, '10': 'mac'},
  ],
};

/// Descriptor for `AuthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDataDescriptor = $convert.base64Decode(
    'CghBdXRoRGF0YRIYCgdjb3VudGVyGAEgASgFUgdjb3VudGVyEhoKCG1hY0xhYmVsGAIgASgJUg'
    'htYWNMYWJlbBIQCgNtYWMYAyABKAxSA21hYw==');

@$core.Deprecated('Use registerTransactionRequestDescriptor instead')
const RegisterTransactionRequest$json = {
  '1': 'RegisterTransactionRequest',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.agnostiko_meta.Transaction', '10': 'transaction'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
};

/// Descriptor for `RegisterTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerTransactionRequestDescriptor = $convert.base64Decode(
    'ChpSZWdpc3RlclRyYW5zYWN0aW9uUmVxdWVzdBI9Cgt0cmFuc2FjdGlvbhgBIAEoCzIbLmFnbm'
    '9zdGlrb19tZXRhLlRyYW5zYWN0aW9uUgt0cmFuc2FjdGlvbhIWCgZvcmlnaW4YAiABKAlSBm9y'
    'aWdpbhI0CghhdXRoRGF0YRgDIAEoCzIYLmFnbm9zdGlrb19tZXRhLkF1dGhEYXRhUghhdXRoRG'
    'F0YQ==');

@$core.Deprecated('Use registerTransactionResponseDescriptor instead')
const RegisterTransactionResponse$json = {
  '1': 'RegisterTransactionResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 0, '10': 'error', '17': true},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
  '8': [
    {'1': '_error'},
  ],
};

/// Descriptor for `RegisterTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerTransactionResponseDescriptor = $convert.base64Decode(
    'ChtSZWdpc3RlclRyYW5zYWN0aW9uUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcx'
    'I0CgVlcnJvchgCIAEoCzIZLmFnbm9zdGlrb19tZXRhLk1ldGFFcnJvckgAUgVlcnJvcogBARI0'
    'CghhdXRoRGF0YRgDIAEoCzIYLmFnbm9zdGlrb19tZXRhLkF1dGhEYXRhUghhdXRoRGF0YUIICg'
    'ZfZXJyb3I=');

@$core.Deprecated('Use startTransactionRequestDescriptor instead')
const StartTransactionRequest$json = {
  '1': 'StartTransactionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
};

/// Descriptor for `StartTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startTransactionRequestDescriptor = $convert.base64Decode(
    'ChdTdGFydFRyYW5zYWN0aW9uUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFgoGb3JpZ2luGAIgAS'
    'gJUgZvcmlnaW4SNAoIYXV0aERhdGEYAyABKAsyGC5hZ25vc3Rpa29fbWV0YS5BdXRoRGF0YVII'
    'YXV0aERhdGE=');

@$core.Deprecated('Use transactionNotificationDescriptor instead')
const TransactionNotification$json = {
  '1': 'TransactionNotification',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.agnostiko_meta.Transaction', '9': 0, '10': 'transaction', '17': true},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 1, '10': 'error', '17': true},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
  '8': [
    {'1': '_transaction'},
    {'1': '_error'},
  ],
};

/// Descriptor for `TransactionNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionNotificationDescriptor = $convert.base64Decode(
    'ChdUcmFuc2FjdGlvbk5vdGlmaWNhdGlvbhJCCgt0cmFuc2FjdGlvbhgBIAEoCzIbLmFnbm9zdG'
    'lrb19tZXRhLlRyYW5zYWN0aW9uSABSC3RyYW5zYWN0aW9uiAEBEjQKBWVycm9yGAIgASgLMhku'
    'YWdub3N0aWtvX21ldGEuTWV0YUVycm9ySAFSBWVycm9yiAEBEjQKCGF1dGhEYXRhGAMgASgLMh'
    'guYWdub3N0aWtvX21ldGEuQXV0aERhdGFSCGF1dGhEYXRhQg4KDF90cmFuc2FjdGlvbkIICgZf'
    'ZXJyb3I=');

@$core.Deprecated('Use getTransactionRequestDescriptor instead')
const GetTransactionRequest$json = {
  '1': 'GetTransactionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
};

/// Descriptor for `GetTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionRequestDescriptor = $convert.base64Decode(
    'ChVHZXRUcmFuc2FjdGlvblJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhYKBm9yaWdpbhgCIAEoCV'
    'IGb3JpZ2luEjQKCGF1dGhEYXRhGAMgASgLMhguYWdub3N0aWtvX21ldGEuQXV0aERhdGFSCGF1'
    'dGhEYXRh');

@$core.Deprecated('Use getTransactionResponseDescriptor instead')
const GetTransactionResponse$json = {
  '1': 'GetTransactionResponse',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.agnostiko_meta.Transaction', '9': 0, '10': 'transaction', '17': true},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 1, '10': 'error', '17': true},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
  '8': [
    {'1': '_transaction'},
    {'1': '_error'},
  ],
};

/// Descriptor for `GetTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionResponseDescriptor = $convert.base64Decode(
    'ChZHZXRUcmFuc2FjdGlvblJlc3BvbnNlEkIKC3RyYW5zYWN0aW9uGAEgASgLMhsuYWdub3N0aW'
    'tvX21ldGEuVHJhbnNhY3Rpb25IAFILdHJhbnNhY3Rpb26IAQESNAoFZXJyb3IYAiABKAsyGS5h'
    'Z25vc3Rpa29fbWV0YS5NZXRhRXJyb3JIAVIFZXJyb3KIAQESNAoIYXV0aERhdGEYAyABKAsyGC'
    '5hZ25vc3Rpa29fbWV0YS5BdXRoRGF0YVIIYXV0aERhdGFCDgoMX3RyYW5zYWN0aW9uQggKBl9l'
    'cnJvcg==');

@$core.Deprecated('Use getStatusRequestDescriptor instead')
const GetStatusRequest$json = {
  '1': 'GetStatusRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
};

/// Descriptor for `GetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTdGF0dXNSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIWCgZvcmlnaW4YAiABKAlSBm9yaW'
    'dpbhI0CghhdXRoRGF0YRgDIAEoCzIYLmFnbm9zdGlrb19tZXRhLkF1dGhEYXRhUghhdXRoRGF0'
    'YQ==');

@$core.Deprecated('Use getStatusResponseDescriptor instead')
const GetStatusResponse$json = {
  '1': 'GetStatusResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.agnostiko_meta.TransactionStatus', '9': 0, '10': 'status', '17': true},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 1, '10': 'error', '17': true},
    {'1': 'authData', '3': 3, '4': 1, '5': 11, '6': '.agnostiko_meta.AuthData', '10': 'authData'},
  ],
  '8': [
    {'1': '_status'},
    {'1': '_error'},
  ],
};

/// Descriptor for `GetStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusResponseDescriptor = $convert.base64Decode(
    'ChFHZXRTdGF0dXNSZXNwb25zZRI+CgZzdGF0dXMYASABKA4yIS5hZ25vc3Rpa29fbWV0YS5Ucm'
    'Fuc2FjdGlvblN0YXR1c0gAUgZzdGF0dXOIAQESNAoFZXJyb3IYAiABKAsyGS5hZ25vc3Rpa29f'
    'bWV0YS5NZXRhRXJyb3JIAVIFZXJyb3KIAQESNAoIYXV0aERhdGEYAyABKAsyGC5hZ25vc3Rpa2'
    '9fbWV0YS5BdXRoRGF0YVIIYXV0aERhdGFCCQoHX3N0YXR1c0IICgZfZXJyb3I=');

