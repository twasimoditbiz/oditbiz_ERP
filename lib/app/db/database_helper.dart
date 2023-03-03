import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
class LedgerTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
  TextColumn get asRateType => text().nullable()();
  TextColumn get tin => text().nullable()();
}

class GroupTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class LocationTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class CategoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class BrandTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class ItemCodeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class ItemNameTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class SubcategoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class CustomerTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
  TextColumn get asRateType => text().nullable()();
  TextColumn get tin => text().nullable()();
}

class SalesmanTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class AreaTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class DistrictTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class SalesTypeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class CashTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class CompanyTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get comCode => text().nullable()();
  RealColumn get comId => real().nullable()();
  TextColumn get com_name => text().nullable()();
  TextColumn get com_add1 => text().nullable()();
  TextColumn get com_add2 => text().nullable()();
  TextColumn get com_add3 => text().nullable()();
  TextColumn get com_add4 => text().nullable()();
  TextColumn get com_add5 => text().nullable()();
  TextColumn get com_telephone => text().nullable()();
  TextColumn get com_mob => text().nullable()();
  TextColumn get com_email => text().nullable()();
  TextColumn get com_gstin => text().nullable()();
  TextColumn get com_sdate => text().nullable()();
  TextColumn get com_edate => text().nullable()();
  TextColumn get com_state => text().nullable()();
  TextColumn get com_state_code => text().nullable()();
  TextColumn get com_bankac => text().nullable()();
  TextColumn get com_bank_accno => text().nullable()();
  TextColumn get com_bank_ifsc => text().nullable()();
  TextColumn get com_reg_date => text().nullable()();
  TextColumn get com_appdata => text().nullable()();
  TextColumn get com_next_db => text().nullable()();
  TextColumn get com_comtype => text().nullable()();
  TextColumn get com_server => text().nullable()();
  TextColumn get com_pass => text().nullable()();
  TextColumn get com_user => text().nullable()();
  TextColumn get com_product_prefix => text().nullable()();
  TextColumn get com_essl_path => text().nullable()();
  TextColumn get com_lantimeTextColumn => text().nullable()();
  RealColumn get com_essl_min_halfday_hrsTextColumn => real().nullable()();
  RealColumn get com_essl_min_fullday_hrsTextColumn => real().nullable()();
  TextColumn get com_country => text().nullable()();
  TextColumn get com_country_code => text().nullable()();
  TextColumn get com_currency_code => text().nullable()();
  TextColumn get com_currency_max => text().nullable()();
  TextColumn get com_currency_min => text().nullable()();
  TextColumn get com_location => text().nullable()();
  TextColumn get com_trade_name => text().nullable()();
  IntColumn get com_pincodeTextColumn => integer().nullable()();
  IntColumn get com_yd_statusTextColumn => integer().nullable()();
  TextColumn get com_yd_db_name => text().nullable()();
  TextColumn get com_logo => text().nullable()();
  TextColumn get com_ar_name => text().nullable()();
  TextColumn get com_ar_add1 => text().nullable()();
  TextColumn get com_ar_add2 => text().nullable()();
  TextColumn get com_ar_add3 => text().nullable()();
  TextColumn get com_ar_mob => text().nullable()();
  TextColumn get com_ar_vat => text().nullable()();
}

class AllSalesTypeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get strId => text().nullable()();
  TextColumn get strName => text().nullable()();
  IntColumn get strAccId => integer().nullable()();
  TextColumn get strTransferTo => text().nullable()();
}

class AllRateTypeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
  TextColumn get rtName => text().nullable()();
}

class AndroidTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get ansId => real().nullable()();
  TextColumn get ansName => text().nullable()();
  TextColumn get ansStatus => text().nullable()();
}

class PermissionsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class AllRoutesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class GnlUsersTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class BankTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class Company2Table extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class ReceivingconditionTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class ServicetypeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class ComplaintsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class FixtypeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class WorkorderstatusTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class ColorTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class DeliverystatusTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class CollecteditemsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class FormControlsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

class LenditemsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text().nullable()();
  RealColumn get value => real().nullable()();
}

@DataClassName("LedgerTable")
@DataClassName("GroupTable")
@DataClassName("LocationTable")
@DataClassName("CategoryTable")
@DataClassName("SubcategoryTable")
@DataClassName("BrandTable")
@DataClassName("ItemCodeTable")
@DataClassName("ItemNameTable")
@DataClassName("CustomerTable")
@DataClassName("SalesmanTable")
@DataClassName("DistrictTable")
@DataClassName("AreaTable")
@DataClassName("SalesTypeTable")
@DataClassName("CashTable")
@DataClassName("BankTable")
@DataClassName("CompanyTable")
@DataClassName("AndroidTable")
@DataClassName("AllSalesTypeTable")
@DataClassName("AllRateTypeTable")
@DataClassName("AllRoutesTable")
@DataClassName("PermissionsTable")
@DataClassName("GnlUsersTable")
@DataClassName("Company2Table")
@DataClassName("ReceivingconditionTable")
@DataClassName("ServicetypeTable")
@DataClassName("ComplaintsTable")
@DataClassName("FixtypeTable")
@DataClassName("WorkorderstatusTable")
@DataClassName("ColorTable")
@DataClassName("DeliverystatusTable")
@DataClassName("CollecteditemsTable")
@DataClassName("FormControlsTable")
@DataClassName("LenditemsTable")

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@DriftDatabase(tables: [
  LedgerTable,
  LedgerTable,
  GroupTable,
  LocationTable,
  CategoryTable,
  SubcategoryTable,
  BrandTable,
  ItemCodeTable,
  ItemNameTable,
  CustomerTable,
  SalesmanTable,
  DistrictTable,
  AreaTable,
  SalesTypeTable,
  CashTable,
  BankTable,
  CompanyTable,
  AndroidTable,
  AllSalesTypeTable,
  AllRateTypeTable,
  AllRoutesTable,
  PermissionsTable,
  GnlUsersTable,
  Company2Table,
  ReceivingconditionTable,
  ServicetypeTable,
  ComplaintsTable,
  FixtypeTable,
  WorkorderstatusTable,
  ColorTable,
  DeliverystatusTable,
  CollecteditemsTable,
  FormControlsTable,
  LenditemsTable,
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
