import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
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
    final path = await getDatabasesPath();
    final dbPath = join(path, 'favorites.db');

    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE favorite_circuits(
        id TEXT PRIMARY KEY,
        name TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE favorite_drivers(
        id TEXT PRIMARY KEY,
        name TEXT
      )
    ''');
  }

  // Add Circuit to Favorite
  Future<void> insertFavoriteCircuit(String id, String name) async {
    final db = await database;
    await db.insert(
      'favorite_circuits',
      {'id': id, 'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Remove Circuit from Favorite
  Future<void> removeFavoriteCircuit(String id) async {
    final db = await database;
    await db.delete(
      'favorite_circuits',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Get All Favorite Circuits
  Future<List<Map<String, dynamic>>> getFavoriteCircuits() async {
    final db = await database;
    return await db.query('favorite_circuits');
  }

  // Add Driver to Favorite
  Future<void> insertFavoriteDriver(String id, String name) async {
    final db = await database;
    await db.insert(
      'favorite_drivers',
      {'id': id, 'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Remove Driver from Favorite
  Future<void> removeFavoriteDriver(String id) async {
    final db = await database;
    await db.delete(
      'favorite_drivers',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Get All Favorite Drivers
  Future<List<Map<String, dynamic>>> getFavoriteDrivers() async {
    final db = await database;
    return await db.query('favorite_drivers');
  }
}
