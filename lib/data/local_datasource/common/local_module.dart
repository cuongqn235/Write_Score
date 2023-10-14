import 'package:write_score/gen/assets.gen.dart';
import 'package:write_score/helper/logger/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/migration/migration_util.dart';

@module
abstract class LocalModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  @preResolve
  Future<Database> get sqlite => _setupDB();

  Future<Database> _setupDB() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'scoregame.db');
    logD('Database path: $path');
    // final migrationScripts = <String>[];
    final migrationScripts = await Future.wait(
      MigrationUtil.processMigrations(Assets.database.migration.values).map(
        (e) async => rootBundle.loadString(e),
      ),
    );
    final database = await openDatabase(
      path,
      version: migrationScripts.length + 1,
      onUpgrade: (db, oldVersion, newVersion) async {
        for (var i = oldVersion; i < newVersion; i++) {
          try {
            final batch = db.batch();
            final scripts = migrationScripts[i - 1];
            for (final script in scripts.split(';')) {
              if (script.trim().isNotEmpty) {
                logD(script.trim());
                batch.execute(script.trim());
              }
            }
            await batch.commit();
          } on Exception catch (e, strace) {
            if (kDebugMode) {
              print('$e $strace');
            }
          }
        }
      },
      onCreate: (Database db, int version) async {
        // Run migrate for first time
        for (var i = 1; i < migrationScripts.length + 1; i++) {
          try {
            final batch = db.batch();
            final scripts = migrationScripts[i - 1];
            for (final script in scripts.split(';')) {
              if (script.trim().isNotEmpty) {
                logD(script.trim());
                batch.execute(script.trim());
              }
            }
            await batch.commit();
          } on Exception catch (e, strace) {
            if (kDebugMode) {
              print('$e $strace');
            }
          }
        }
      },
    );

    return database;
  }
}
