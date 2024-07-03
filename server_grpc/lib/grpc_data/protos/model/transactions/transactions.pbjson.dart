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
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.agnostiko_meta.TransactionStatus', '10': 'status'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.agnostiko_meta.TransactionType', '10': 'type'},
    {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
    {'1': 'referenceNumber', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'referenceNumber', '17': true},
    {'1': 'arqc', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'arqc', '17': true},
    {'1': 'maskPan', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'maskPan', '17': true},
    {'1': 'authorizationNumber', '3': 7, '4': 1, '5': 9, '9': 3, '10': 'authorizationNumber', '17': true},
    {'1': 'stan', '3': 8, '4': 1, '5': 9, '9': 4, '10': 'stan', '17': true},
  ],
  '8': [
    {'1': '_referenceNumber'},
    {'1': '_arqc'},
    {'1': '_maskPan'},
    {'1': '_authorizationNumber'},
    {'1': '_stan'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhI5CgZzdGF0dXMYASABKA4yIS5hZ25vc3Rpa29fbWV0YS5UcmFuc2FjdG'
    'lvblN0YXR1c1IGc3RhdHVzEjMKBHR5cGUYAiABKA4yHy5hZ25vc3Rpa29fbWV0YS5UcmFuc2Fj'
    'dGlvblR5cGVSBHR5cGUSFgoGYW1vdW50GAMgASgFUgZhbW91bnQSLQoPcmVmZXJlbmNlTnVtYm'
    'VyGAQgASgJSABSD3JlZmVyZW5jZU51bWJlcogBARIXCgRhcnFjGAUgASgJSAFSBGFycWOIAQES'
    'HQoHbWFza1BhbhgGIAEoCUgCUgdtYXNrUGFuiAEBEjUKE2F1dGhvcml6YXRpb25OdW1iZXIYBy'
    'ABKAlIA1ITYXV0aG9yaXphdGlvbk51bWJlcogBARIXCgRzdGFuGAggASgJSARSBHN0YW6IAQFC'
    'EgoQX3JlZmVyZW5jZU51bWJlckIHCgVfYXJxY0IKCghfbWFza1BhbkIWChRfYXV0aG9yaXphdG'
    'lvbk51bWJlckIHCgVfc3Rhbg==');

