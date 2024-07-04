
import 'package:server_grpc/server_grpc.dart';

class ResponseModel {
  final bool status;
  final String info;
  final TransactionGRpcModel? transcion;
  ResponseModel(  {required this.status, required this.info, this.transcion,});
}
