
import 'package:server_grpc/database/db/data/db_implement.dart';
import 'package:server_grpc/database/db/data/db_table_repo.dart';
import 'package:server_grpc/database/models/transaction_grpc_model.dart';
import 'package:server_grpc/grpc_data/protos/model/transactions/transactions.pb.dart';

class TransactionsDbService {
  static final _impl = DbImplement();
  static const _table = NameTable.transaccion;

  static Future<int> insert(TransactionGRpcModel data) async => await _impl.insert(_table, data);

  static Future<int> update( {required TransactionGRpcModel data, required String id}) async => await _impl.update(_table, data: data, value: id);


  static Future<int> updateStatus({required TransactionStatus status, required String idTransaction}) async {
    Map<String, dynamic> data = {'status':  statusValues.reverse[status],};
   return await _impl.updateStatus(_table, data: data, idTransaction: idTransaction);
  }

  static Future getAll() async {
    List listTra = [];
    final resp = await _impl.getAll(_table);
    for (var transac in resp) {
      listTra.add(TransactionGRpcModel.fromMap(transac));
    }
    return listTra;
  }

 static Future<TransactionGRpcModel?> getByIdOrigin({required String origin, required String idTransaccion}) async {
      final transaction = await _impl.getByIdOrigin(origin: origin, idTransaccion: idTransaccion);
    try {
      final info = TransactionGRpcModel.fromMap(transaction.first);
      return info;
    } catch (e) {
      return null;
    }
  }
}
