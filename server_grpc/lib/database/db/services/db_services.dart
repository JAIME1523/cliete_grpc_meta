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
          transactionStatus TEXT,
          transactionType TEXT,
          amount TEXT,
          secondaryAmount TEXT)
        ''');
        await db.execute(
            '''
        CREATE TABLE  IF NOT EXISTS  Origintransaction(
            origintransactionId INTEGER PRIMARY KEY AUTOINCREMENT,
            origin TEXT,
            transactionId INTEGER,
            FOREIGN KEY(transactionId) REFERENCES Transactions(transactionId) ON DELETE CASCADE
            )
          ''');
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

  static Future<List<T>> getBy<T>(NameTable table,
      {SearchBy type = SearchBy.transactionId, required String value}) async {
    final db = await dataBase;
    final List<T> list = [];
    try {
      final resp = await db
          .query(table.value, where: '${type.value} =? ', whereArgs: [value]);
      for (var element in resp) {
        list.add(DataDbM.fromMap(element) as T);
      }
      return list;
    } catch (e) {
      return list;
    }
  }

  static Future<List<T>> getAll<T>(NameTable table) async {
    final db = await dataBase;
    final List<T> list = [];
    final resp = await db.query(table.value);
    for (var element in resp) {
      list.add(DataDbM.fromMap(element) as T);
    }
    return list;
  }

  static Future<int> delete(NameTable table, int id) async {
    final db = await dataBase;
    return await db.delete(table.value);
  }

  static Future<int> update(NameTable table,
      {required DataDbM data,
      SearchBy type = SearchBy.transactionId,
      required String value}) async {
    final db = await dataBase;
   try {
      return await db.update(table.value, data.toMap(),
        where: '${type.value} =? ', whereArgs: [value]);
   } catch (e) {
     return 0;
   }
  }

  static Future<List<T>> customQuery<T>(String query) async {
    final db = await dataBase;
    final List<T> list = [];
    final resp = await db.rawQuery(query);
    for (var element in resp) {
      list.add(DataDbM.fromMap(element) as T);
    }
    return list;
  }
}

enum SearchBy {
  transactionId("transactionId"),
  origin("origin"),
  origintransactionId("origintransactionId"),
  transactionStatus("transactionStatus");

  final String value;
  const SearchBy(this.value);
}
