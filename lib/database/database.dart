import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part "tables/user.dart";

part "dao/user_dao.dart";

part 'database.g.dart';

@DriftDatabase(
    tables: [UserTable],
    daos: [UserDao])
class DatabaseHelper extends _$DatabaseHelper {
  DatabaseHelper() : super(_openConnection());

  @override
  int get schemaVersion => 0;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onUpgrade: (migrator, from, to) async {},
        beforeOpen: (details) async {
      },);

  Future<void> deleteEverything() {
    return transaction(() async {
      for (final table in allTables) {
        // if(table != wearableTable) {
          await delete(table).go();
        // }
      }
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'emma.sqlite'));
    return NativeDatabase(file);
  });
}
