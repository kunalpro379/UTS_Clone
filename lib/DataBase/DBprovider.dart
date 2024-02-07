import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbProvider extends ChangeNotifier {
  Database? _database;

  Future<void> initializeDatabase() async {
    String path = await getDatabasesPath();
    _database = await openDatabase(
      join(path, 'fare.db'),
      onCreate: (db, version) {
        db.execute('''CREATE TABLE places(id INTEGER PRIMARY KEY,name TEXT)''');
        db.execute(
            '''CREATE TABLE tickets(id INTEGER PRIMARY KEY< source_id TEXT, destination_id TEXT,price INTEGER)''');
      },
      version: 1,
    );
  }
}
