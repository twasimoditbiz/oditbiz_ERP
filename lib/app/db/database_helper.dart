import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart' as j;
// assuming that your file is called filename.dart. This will give an error at first,
// but it's needed for drift to know about the generated code
part 'database_helper.g.dart';

// this will generate a table called "todos" for us. The rows of that table will
// be represented by a class called "Todo".

class SettingsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get ledger => text().nullable()();
  TextColumn get group => text().nullable()();
  TextColumn get location => text().nullable()();
  TextColumn get category => text().nullable()();
  TextColumn get subcategory => text().nullable()();
  TextColumn get brand => text().nullable()();
  TextColumn get itemCode => text().nullable()();
  TextColumn get itemName => text().nullable()();
  TextColumn get customer => text().nullable()();
  TextColumn get salesman => text().nullable()();
  TextColumn get district => text().nullable()();
  TextColumn get area => text().nullable()();
  TextColumn get salesType => text().nullable()();
  TextColumn get cash => text().nullable()();
  TextColumn get bank => text().nullable()();
  TextColumn get company => text().nullable()();
  TextColumn get android => text().nullable()();
  TextColumn get allSalesType => text().nullable()();
  TextColumn get allRateType => text().nullable()();
  TextColumn get allRoutes => text().nullable()();
  TextColumn get permissions => text().nullable()();
  TextColumn get gnlUsers => text().nullable()();
  TextColumn get company2 => text().nullable()();
  TextColumn get receivingcondition => text().nullable()();
  TextColumn get servicetype => text().nullable()();
  TextColumn get complaints => text().nullable()();
  TextColumn get fixtype => text().nullable()();
  TextColumn get workorderstatus => text().nullable()();
  TextColumn get color => text().nullable()();
  TextColumn get deliverystatus => text().nullable()();
  TextColumn get collecteditems => text().nullable()();
  TextColumn get formControls => text().nullable()();
  TextColumn get lenditems => text().nullable()();
}

@DataClassName("SettingsTable")

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@DriftDatabase(tables: [
  SettingsTable,
], queries: {
  'getMaxUserId': 'SELECT max(id) FROM company_table',
})
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        if (from == 1) {}
      });

  @override
  int get schemaVersion => 1;

  Future<int> insersettingsTableData(
      SettingsTableCompanion settingsTableData) async {
    return await into(settingsTable).insert(settingsTableData);
  }

  Future<int> checkAndInsersettingsTableData(
      SettingsTableCompanion settingsTableData) async {
    List<SettingsTableData> settingsData = await (select(settingsTable)).get();
log("settingsData.isEmpty=== ${settingsData.isEmpty}");
    if (settingsData.isEmpty) {
      return await into(settingsTable).insert(settingsTableData);
    } else {
      return await (update(settingsTable)..where((tbl) => tbl.id.equals(1)))
          .write(settingsTableData);
    }
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
