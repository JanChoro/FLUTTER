//importamos sqlite
//importamos path -- no se de donde viene
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';

class DbHelper {
  static final DbHelper instance = DbHelper._instance();
//
  DbHelper._instance();
//
static Database? _db;
//
Future<Database> get db async{
  _db ??= await initDb();
  return _db!;
} 

static Future<Database> initDb() async{
  final db = openDatabase(
    join(await getDatabasesPath(), 'oriental_soft_database.db'),
    onCreate: (db, version){
      return db.execute(
        'CREATE TABLE Clientes(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, apellido TEXT, correo TEXT, telefono INTEGER, direccion TEXT, estado INTEGER); CREATE TABLE Productos(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, apellido TEXT, correo TEXT, telefono INTEGER, direccion TEXT, estado INTEGER)'

      );
    },
    version: 1,
  );
  return db;
}

static Future<Database> vv() async{
  final db = openDatabase(
    join(await getDatabasesPath(), 'oriental_soft_database.db'),
    onCreate: (db, version){
      return db.execute(
        'CREATE TABLE Clientes(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, apellido TEXT, correo TEXT, telefono INTEGER, direccion TEXT, estado INTEGER)'
        // 'CREATE TABLE pro(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, apellido TEXT, correo TEXT, telefono INTEGER, direccion TEXT, estado INTEGER)' as List<Object?>?

      );
    },
    version: 1,
  );
  return db;
}

}

