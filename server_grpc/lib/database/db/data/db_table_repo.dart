import '../../models/data_model.dart';
import '../services/db_services.dart';

abstract class DbTableRepo {
  Future<int> insert(NameTable table, DataDbM dataModel);
  Future<int> update(NameTable table,{required DataDbM data,SearchBy type = SearchBy.transactionId,required String value});
  Future<int> delete(NameTable table, int id);
  Future<List<T>> getAll<T>(NameTable table);
  Future<List<T>> customQuery<T>(String query);
  Future<List<T>> getBy<T>(NameTable table,{SearchBy type = SearchBy.transactionId, required String value});
}

enum NameTable {
  transaccion("Transactions"),
  origintransaction("Origintransaction");

  final String value;
  const NameTable(this.value);
}
