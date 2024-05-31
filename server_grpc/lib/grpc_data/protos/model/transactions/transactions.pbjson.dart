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
    {'1': 'Refund', '2': 1},
    {'1': 'Void', '2': 2},
  ],
};

/// Descriptor for `TransactionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List transactionTypeDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2FjdGlvblR5cGUSCAoEU2FsZRAAEgoKBlJlZnVuZBABEggKBFZvaWQQAg==');

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
    {'1': 'secondaryAmount', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'secondaryAmount', '17': true},
  ],
  '8': [
    {'1': '_secondaryAmount'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJpZBgBIAEoCVICaWQSOQoGc3RhdHVzGAIgASgOMiEuYWdub3N0aW'
    'tvX21ldGEuVHJhbnNhY3Rpb25TdGF0dXNSBnN0YXR1cxIzCgR0eXBlGAMgASgOMh8uYWdub3N0'
    'aWtvX21ldGEuVHJhbnNhY3Rpb25UeXBlUgR0eXBlEhYKBmFtb3VudBgEIAEoBVIGYW1vdW50Ei'
    '0KD3NlY29uZGFyeUFtb3VudBgFIAEoBUgAUg9zZWNvbmRhcnlBbW91bnSIAQFCEgoQX3NlY29u'
    'ZGFyeUFtb3VudA==');

