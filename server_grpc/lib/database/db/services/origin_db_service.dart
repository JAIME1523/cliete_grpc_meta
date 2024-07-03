import 'package:server_grpc/database/database.dart';

import '../data/db_implement.dart';
import '../data/db_table_repo.dart';

class OriginDbService {
  static final _impl = DbImplement();
  static const _table = NameTable.origintransaction;

  static Future<int> insert(OriginGrpcModel data) async => await _impl.insert(_table, data);

  static Future<int> update ({required OriginGrpcModel data,required String id}) async =>  await _impl.update(_table, data: data, value: id);

}