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
  Future<int> update(NameTable table,{ required DataDbM data, SearchBy type = SearchBy.idProto, required String value}) async => await DbServices.update(table,data: data, type: type, value: value);

  @override
 Future<List<Map<String,dynamic>>> getAll(NameTable table) async => await DbServices.getAll(table);
  
  @override
 Future<List<Map<String,dynamic>>> customQuery(String query) async => await DbServices.customQuery(query);
 
  @override
  Future<List<Map<String,dynamic>>> getByIdOrigin({required String origin, required String idTransaccion}) async => await DbServices.getByOriginId( origin: origin, idTransaccion: idTransaccion);
  

  Future<int> updateStatus(NameTable table,{ required Map<String,dynamic> data, required String idTransaction}) async => await DbServices.updateStatus(table, data: data, idTransaccion: idTransaction);

}
