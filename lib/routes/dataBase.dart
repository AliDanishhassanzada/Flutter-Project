import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper{
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE person(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      name TEXT,
      f_name TEXT,
      job TEXT,
      salary TEXT,
      many_family TEXT,
      id_card TEXT,
      zoon TEXT)"""
    );
  }

  static Future<sql.Database> db() async{
    return sql.openDatabase(
      'dbperson.db',
      version: 1,
      onCreate: (sql.Database database ,int version) async{
        await createTable(database);
      }
    );
  }

  static Future<int> createItem(String name,String f_name,String job,String salary,String many_family,String id_card,String zoon) async {
    final db = await SQLHelper.db();
    final data = {"name":name , "f_name":f_name,"job":job,"salary":salary.toString(),"many_family":many_family.toString(),"id_card":id_card,"zoon":zoon};
    final id = await db.insert("person", data,
    conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItem() async {
    final db = await SQLHelper.db();
    return db.query('person',orderBy: 'id');
  }

  static Future<void> deleteitem() async {
    final db = await SQLHelper.db();
    try{
      await db.delete("person");
      
    }catch(err){
      print("پیش آمده کداک مشکا !!!");
    }
  }

}