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
  ],
};

/// Descriptor for `MetaErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List metaErrorCodeDescriptor = $convert.base64Decode(
    'Cg1NZXRhRXJyb3JDb2RlEhEKDUludGVybmFsRXJyb3IQABILCgdXcm9uZ0lkEAESGAoUVHJhbn'
    'NhY3Rpb25Db21wbGV0ZWQQAg==');

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

@$core.Deprecated('Use registerTransactionRequestDescriptor instead')
const RegisterTransactionRequest$json = {
  '1': 'RegisterTransactionRequest',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.agnostiko_meta.Transaction', '10': 'transaction'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
  ],
};

/// Descriptor for `RegisterTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerTransactionRequestDescriptor = $convert.base64Decode(
    'ChpSZWdpc3RlclRyYW5zYWN0aW9uUmVxdWVzdBI9Cgt0cmFuc2FjdGlvbhgBIAEoCzIbLmFnbm'
    '9zdGlrb19tZXRhLlRyYW5zYWN0aW9uUgt0cmFuc2FjdGlvbhIWCgZvcmlnaW4YAiABKAlSBm9y'
    'aWdpbg==');

@$core.Deprecated('Use registerTransactionResponseDescriptor instead')
const RegisterTransactionResponse$json = {
  '1': 'RegisterTransactionResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 0, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_error'},
  ],
};

/// Descriptor for `RegisterTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerTransactionResponseDescriptor = $convert.base64Decode(
    'ChtSZWdpc3RlclRyYW5zYWN0aW9uUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcx'
    'I0CgVlcnJvchgCIAEoCzIZLmFnbm9zdGlrb19tZXRhLk1ldGFFcnJvckgAUgVlcnJvcogBAUII'
    'CgZfZXJyb3I=');

@$core.Deprecated('Use startTransactionRequestDescriptor instead')
const StartTransactionRequest$json = {
  '1': 'StartTransactionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
  ],
};

/// Descriptor for `StartTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startTransactionRequestDescriptor = $convert.base64Decode(
    'ChdTdGFydFRyYW5zYWN0aW9uUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFgoGb3JpZ2luGAIgAS'
    'gJUgZvcmlnaW4=');

@$core.Deprecated('Use transactionNotificationDescriptor instead')
const TransactionNotification$json = {
  '1': 'TransactionNotification',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.agnostiko_meta.Transaction', '9': 0, '10': 'transaction', '17': true},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 1, '10': 'error', '17': true},
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
    'YWdub3N0aWtvX21ldGEuTWV0YUVycm9ySAFSBWVycm9yiAEBQg4KDF90cmFuc2FjdGlvbkIICg'
    'ZfZXJyb3I=');

@$core.Deprecated('Use getTransactionRequestDescriptor instead')
const GetTransactionRequest$json = {
  '1': 'GetTransactionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
  ],
};

/// Descriptor for `GetTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionRequestDescriptor = $convert.base64Decode(
    'ChVHZXRUcmFuc2FjdGlvblJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhYKBm9yaWdpbhgCIAEoCV'
    'IGb3JpZ2lu');

@$core.Deprecated('Use getTransactionResponseDescriptor instead')
const GetTransactionResponse$json = {
  '1': 'GetTransactionResponse',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.agnostiko_meta.Transaction', '9': 0, '10': 'transaction', '17': true},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 1, '10': 'error', '17': true},
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
    'Z25vc3Rpa29fbWV0YS5NZXRhRXJyb3JIAVIFZXJyb3KIAQFCDgoMX3RyYW5zYWN0aW9uQggKBl'
    '9lcnJvcg==');

@$core.Deprecated('Use getStatusRequestDescriptor instead')
const GetStatusRequest$json = {
  '1': 'GetStatusRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'origin', '3': 2, '4': 1, '5': 9, '10': 'origin'},
  ],
};

/// Descriptor for `GetStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatusRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTdGF0dXNSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIWCgZvcmlnaW4YAiABKAlSBm9yaW'
    'dpbg==');

@$core.Deprecated('Use getStatusResponseDescriptor instead')
const GetStatusResponse$json = {
  '1': 'GetStatusResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.agnostiko_meta.TransactionStatus', '9': 0, '10': 'status', '17': true},
    {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.agnostiko_meta.MetaError', '9': 1, '10': 'error', '17': true},
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
    'bWV0YS5NZXRhRXJyb3JIAVIFZXJyb3KIAQFCCQoHX3N0YXR1c0IICgZfZXJyb3I=');

