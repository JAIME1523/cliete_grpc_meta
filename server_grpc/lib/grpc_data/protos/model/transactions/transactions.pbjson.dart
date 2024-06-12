//
//  Generated code. Do not modify.
//  source: transactions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use transactionTypeDescriptor instead')
const TransactionType$json = {
  '1': 'TransactionType',
  '2': [
    {'1': 'Sale', '2': 0},
  ],
};

/// Descriptor for `TransactionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionTypeDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2FjdGlvblR5cGUSCAoEU2FsZRAA');

@$core.Deprecated('Use transactionStatusDescriptor instead')
const TransactionStatus$json = {
  '1': 'TransactionStatus',
  '2': [
    {'1': 'Pending', '2': 0},
    {'1': 'Failed', '2': 1},
    {'1': 'Cancelled', '2': 2},
    {'1': 'Denied', '2': 3},
    {'1': 'Approved', '2': 4},
  ],
};

/// Descriptor for `TransactionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionStatusDescriptor = $convert.base64Decode(
    'ChFUcmFuc2FjdGlvblN0YXR1cxILCgdQZW5kaW5nEAASCgoGRmFpbGVkEAESDQoJQ2FuY2VsbG'
    'VkEAISCgoGRGVuaWVkEAMSDAoIQXBwcm92ZWQQBA==');

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.agnostiko_meta.TransactionStatus', '10': 'status'},
    {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.agnostiko_meta.TransactionType', '10': 'type'},
    {'1': 'amount', '3': 4, '4': 1, '5': 5, '10': 'amount'},
    {'1': 'referenceNumber', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'referenceNumber', '17': true},
    {'1': 'arqc', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'arqc', '17': true},
    {'1': 'maskPan', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'maskPan', '17': true},
    {'1': 'authorizationNumber', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'authorizationNumber', '17': true},
  ],
  '8': [
    {'1': '_referenceNumber'},
    {'1': '_arqc'},
    {'1': '_maskPan'},
    {'1': '_authorizationNumber'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJpZBgBIAEoCVICaWQSOQoGc3RhdHVzGAIgASgOMiEuYWdub3N0aW'
    'tvX21ldGEuVHJhbnNhY3Rpb25TdGF0dXNSBnN0YXR1cxIzCgR0eXBlGAMgASgOMh8uYWdub3N0'
    'aWtvX21ldGEuVHJhbnNhY3Rpb25UeXBlUgR0eXBlEhYKBmFtb3VudBgEIAEoBVIGYW1vdW50Ei'
    '0KD3JlZmVyZW5jZU51bWJlchgFIAEoCUgAUg9yZWZlcmVuY2VOdW1iZXKIAQESFwoEYXJxYxgG'
    'IAEoCUgBUgRhcnFjiAEBEh0KB21hc2tQYW4YByABKAlIAlIHbWFza1BhbogBARI1ChNhdXRob3'
    'JpemF0aW9uTnVtYmVyGAggASgJSANSE2F1dGhvcml6YXRpb25OdW1iZXKIAQFCEgoQX3JlZmVy'
    'ZW5jZU51bWJlckIHCgVfYXJxY0IKCghfbWFza1BhbkIWChRfYXV0aG9yaXphdGlvbk51bWJlcg'
    '==');

