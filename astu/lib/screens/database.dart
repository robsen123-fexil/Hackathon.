// ignore_for_file: depend_on_referenced_packages

import 'package:sqflite/sqflite.dart';
// sqlflite is used when ever there is offline too . so it doesnt need online for signing app.
 // used to local storage allow database operation.
import 'package:path/path.dart';

class DatabaseHelper {

  // _Instance is private static variable of type DATABASEHELPER THAT HOLDS SINGLE INSTANCE OF CLASS IT ENSURES THAT ONLY ONE INSTANCE OF DATABASEHELPER IS CREATED THROUGH THE APP

  // THIS ONE ENSURE THAT ONLY SINGLE ONE ISTANCE IS CREATED THROUGHT THE APP BUILDING .
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'user_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        email TEXT
      )
      ''');
  }

  Future<int> insertUser(Map<String, dynamic> user) async {
    Database db = await database;
    return await db.insert('users', user);
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    Database db = await database;
    return await db.query('users');
  }
  Future<Map<String, dynamic>?> getSingleUser() async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.query('users', limit: 1);
    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null;
    }
  }

  Future<int> updateUser(int id, Map<String, dynamic> user) async {
    Database db = await database;
    return await db.update('users', user, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteUser(int id) async {
    Database db = await database;
    return await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }
}
