import 'package:server_grpc/database/database.dart';

import '../data/db_implement.dart';
import '../data/db_table_repo.dart';
import 'db_services.dart';

class OriginDbService {
  static final _impl = DbImplement();
  static const _table = NameTable.origintransaction;

  static Future<int> insert(OriginGrpcModel data) async => await _impl.insert(_table, data);

  static Future<int> update ({required OriginGrpcModel data,required String id}) async =>  await _impl.update(_table, data: data, value: id);

  static  Future<OriginGrpcModel> getById(String id) async {
   final  transaction =  await _impl.getBy<OriginGrpcModel>(_table, value: id, type:SearchBy.origintransactionId);
   return transaction.first;
  } 
}