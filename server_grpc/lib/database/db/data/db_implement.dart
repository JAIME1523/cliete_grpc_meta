import 'dart:async';

import 'package:server_grpc/database/db/data/db_table_repo.dart';
import 'package:server_grpc/database/db/services/db_services.dart';
import 'package:server_grpc/database/models/data_model.dart';

class DbImplement extends DbTableRepo {
  @override
  Future<int> delete(NameTable table, int id) async => await DbServices.delete(table, id);


  @override
  Future<int> insert(NameTable table, DataDbM dataModel) async => await DbServices.insert(table, dataModel);

  @override
  Future<int> update(NameTable table,{ required DataDbM data, SearchBy type = SearchBy.transactionId, required String value}) async => await DbServices.update(table,data: data, type: type, value: value);

  @override
  Future<List<T>> getAll<T>(NameTable table) async => await DbServices.getAll<T>(table);
  
  @override
  Future<List<T>> customQuery<T>(String query) async => await DbServices.customQuery<T>(query);
  
  @override
  Future<List<T>> getBy<T>(NameTable table, {SearchBy type = SearchBy.transactionId, required String value}) async => await DbServices.getBy(table,  type: type,value: value);

  
}
