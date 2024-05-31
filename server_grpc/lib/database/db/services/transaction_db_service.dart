import 'package:server_grpc/database/db/data/db_implement.dart';
import 'package:server_grpc/database/db/data/db_table_repo.dart';
import 'package:server_grpc/database/db/services/db_services.dart';
import 'package:server_grpc/database/models/transaction_grpc_model.dart';

class TransactionsDbService {
  static final _impl = DbImplement();
  static const _table = NameTable.transaccion;

  static Future<int> insert(TransactionGRpcModel data) async => await _impl.insert(_table, data);

  static Future<int> update ({required TransactionGRpcModel data,required String id}) async =>  await _impl.update(_table, data: data, value: id);

  static  Future<TransactionGRpcModel?> getById(String id) async {
   final  transaction =  await _impl.getBy<TransactionGRpcModel>(_table, value: id, type:SearchBy.transactionId);
   return transaction.isEmpty ? null : transaction.first;
  } 
}
