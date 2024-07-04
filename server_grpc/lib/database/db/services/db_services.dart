
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:server_grpc/database/models/data_model.dart';
import 'package:sqflite/sqflite.dart';

import '../data/db_table_repo.dart';

class DbServices {
  static final DbServices _instance = DbServices._internal();
  factory DbServices() => _instance;
  DbServices._internal();

  static Database? _database;

  static Future<Database> get dataBase async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  static Future _config(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  static Future initDB() async {
    Directory docuemnts = await getApplicationCacheDirectory();
    final path = join(docuemnts.path, 'prueba.db');
    return await openDatabase(
      path,
      version: 1,
      onConfigure: _config,
      onCreate: (db, version) async {
        await db.execute(
            '''
        CREATE TABLE  IF NOT EXISTS Transactions(
          transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
          idProto TEXT,
          status TEXT,
          type TEXT,
          referenceNumber TEXT,
          arqc TEXT,
          maskPan TEXT,
          amount TEXT,
          authorizationNumber TEXT)
        ''');
        await db.execute(
            '''
        CREATE TABLE  IF NOT EXISTS  Origintransaction(
            origintransactionId INTEGER PRIMARY KEY AUTOINCREMENT,
            origin TEXT,
            idProto TEXT)
          '''
          //  FOREIGN KEY(idProto) REFERENCES Transactions(idProto) ON DELETE CASCADE
          
);
      },
    );
  }

  static Future<int> insert(NameTable table, DataDbM data) async {
    final db = await dataBase;
    try {
      return await db.insert(table.value, data.toMap());
    } catch (e) {
      return 0;
    }
  }


  static Future<List<Map<String, dynamic>>> getAll(NameTable table) async {
    final db = await dataBase;
    final resp = await db.query(table.value);
    return resp;
  }

  static Future<int> delete(NameTable table, int id) async {
    final db = await dataBase;
    return await db.delete(table.value);
  }

  static Future<int> update(NameTable table, {required DataDbM data, SearchBy type = SearchBy.idProto, required String value}) async {
    final db = await dataBase;
    try {
      return await db.update(table.value, data.toMap(),
          where: '${type.value} =? ', whereArgs: [value]);
    } catch (e) {
      return 0;
    }
  }

  static Future<List<Map<String, dynamic>>> customQuery(String query) async {
    final db = await dataBase;
   try {
     return await db.rawQuery(query);
   } catch (e) {
     return [];
   }
 
  }

  static Future<int> updateStatus(NameTable table,{required Map<String, dynamic> data,required String idTransaccion}) async {
    final db = await dataBase;
    try {
      return await db.update(table.value, data, where: '${SearchBy.idProto.value} =? ', whereArgs: [idTransaccion]);
    } catch (e) {
      return 0;
    }
  }
  
    static Future<List<Map<String, dynamic>>> getByOriginId({required String origin, required String idTransaccion}) async {
    final db = await dataBase;
    try {
       return await db.rawQuery(
        '''SELECT * FROM Transactions t 
          LEFT join Origintransaction O
          on O.origin  == '$origin'
          where t.idProto == '$idTransaccion'
          ''',
        );

    } catch (e) {
      return [];
    }
  }
  
}

enum SearchBy {
//  transactionId("transactionId"),
  idProto("idProto"),

  origin("origin"),
  origintransactionId("origintransactionId"),
  transactionStatus("transactionStatus");

  final String value;
  const SearchBy(this.value);
}
