import 'package:equatable/equatable.dart';
import 'package:server_grpc/server_grpc.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class AgnostikoFailure extends Failure {
  const AgnostikoFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class TransactionFailure extends Failure {
  const TransactionFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class CardFailure extends Failure {
  const CardFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class InvalidInputFailure extends Failure {
  const InvalidInputFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class SettingsFailure extends Failure {
  const SettingsFailure(super.message);

  @override
  List<Object?> get props => [message];
}

class GrpcFailure extends Failure {
  const GrpcFailure(super.message, this.code);
  final  MetaErrorCode code;

  @override
  List<Object?> get props => [message, code];
}

class AthFailure extends Failure {
  const AthFailure(super.message, {required this.status, this.errorCode});
  final bool status;
  final  MetaErrorCode? errorCode;


  @override
  List<Object?> get props => [message];
}
