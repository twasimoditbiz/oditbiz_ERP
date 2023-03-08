// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_helper.dart';

// ignore_for_file: type=lint
class $SettingsTableTable extends SettingsTable
    with TableInfo<$SettingsTableTable, SettingsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _ledgerMeta = const VerificationMeta('ledger');
  @override
  late final GeneratedColumn<String> ledger = GeneratedColumn<String>(
      'ledger', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedColumn<String> group = GeneratedColumn<String>(
      'group', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subcategoryMeta =
      const VerificationMeta('subcategory');
  @override
  late final GeneratedColumn<String> subcategory = GeneratedColumn<String>(
      'subcategory', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<String> itemCode = GeneratedColumn<String>(
      'item_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemNameMeta =
      const VerificationMeta('itemName');
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
      'item_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customerMeta =
      const VerificationMeta('customer');
  @override
  late final GeneratedColumn<String> customer = GeneratedColumn<String>(
      'customer', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salesmanMeta =
      const VerificationMeta('salesman');
  @override
  late final GeneratedColumn<String> salesman = GeneratedColumn<String>(
      'salesman', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _districtMeta =
      const VerificationMeta('district');
  @override
  late final GeneratedColumn<String> district = GeneratedColumn<String>(
      'district', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salesTypeMeta =
      const VerificationMeta('salesType');
  @override
  late final GeneratedColumn<String> salesType = GeneratedColumn<String>(
      'sales_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cashMeta = const VerificationMeta('cash');
  @override
  late final GeneratedColumn<String> cash = GeneratedColumn<String>(
      'cash', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bankMeta = const VerificationMeta('bank');
  @override
  late final GeneratedColumn<String> bank = GeneratedColumn<String>(
      'bank', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _companyMeta =
      const VerificationMeta('company');
  @override
  late final GeneratedColumn<String> company = GeneratedColumn<String>(
      'company', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _androidMeta =
      const VerificationMeta('android');
  @override
  late final GeneratedColumn<String> android = GeneratedColumn<String>(
      'android', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allSalesTypeMeta =
      const VerificationMeta('allSalesType');
  @override
  late final GeneratedColumn<String> allSalesType = GeneratedColumn<String>(
      'all_sales_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allRateTypeMeta =
      const VerificationMeta('allRateType');
  @override
  late final GeneratedColumn<String> allRateType = GeneratedColumn<String>(
      'all_rate_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allRoutesMeta =
      const VerificationMeta('allRoutes');
  @override
  late final GeneratedColumn<String> allRoutes = GeneratedColumn<String>(
      'all_routes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _permissionsMeta =
      const VerificationMeta('permissions');
  @override
  late final GeneratedColumn<String> permissions = GeneratedColumn<String>(
      'permissions', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gnlUsersMeta =
      const VerificationMeta('gnlUsers');
  @override
  late final GeneratedColumn<String> gnlUsers = GeneratedColumn<String>(
      'gnl_users', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _company2Meta =
      const VerificationMeta('company2');
  @override
  late final GeneratedColumn<String> company2 = GeneratedColumn<String>(
      'company2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _receivingconditionMeta =
      const VerificationMeta('receivingcondition');
  @override
  late final GeneratedColumn<String> receivingcondition =
      GeneratedColumn<String>('receivingcondition', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _servicetypeMeta =
      const VerificationMeta('servicetype');
  @override
  late final GeneratedColumn<String> servicetype = GeneratedColumn<String>(
      'servicetype', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _complaintsMeta =
      const VerificationMeta('complaints');
  @override
  late final GeneratedColumn<String> complaints = GeneratedColumn<String>(
      'complaints', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fixtypeMeta =
      const VerificationMeta('fixtype');
  @override
  late final GeneratedColumn<String> fixtype = GeneratedColumn<String>(
      'fixtype', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _workorderstatusMeta =
      const VerificationMeta('workorderstatus');
  @override
  late final GeneratedColumn<String> workorderstatus = GeneratedColumn<String>(
      'workorderstatus', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deliverystatusMeta =
      const VerificationMeta('deliverystatus');
  @override
  late final GeneratedColumn<String> deliverystatus = GeneratedColumn<String>(
      'deliverystatus', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _collecteditemsMeta =
      const VerificationMeta('collecteditems');
  @override
  late final GeneratedColumn<String> collecteditems = GeneratedColumn<String>(
      'collecteditems', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _formControlsMeta =
      const VerificationMeta('formControls');
  @override
  late final GeneratedColumn<String> formControls = GeneratedColumn<String>(
      'form_controls', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lenditemsMeta =
      const VerificationMeta('lenditems');
  @override
  late final GeneratedColumn<String> lenditems = GeneratedColumn<String>(
      'lenditems', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ledger,
        group,
        location,
        category,
        subcategory,
        brand,
        itemCode,
        itemName,
        customer,
        salesman,
        district,
        area,
        salesType,
        cash,
        bank,
        company,
        android,
        allSalesType,
        allRateType,
        allRoutes,
        permissions,
        gnlUsers,
        company2,
        receivingcondition,
        servicetype,
        complaints,
        fixtype,
        workorderstatus,
        color,
        deliverystatus,
        collecteditems,
        formControls,
        lenditems
      ];
  @override
  String get aliasedName => _alias ?? 'settings_table';
  @override
  String get actualTableName => 'settings_table';
  @override
  VerificationContext validateIntegrity(Insertable<SettingsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ledger')) {
      context.handle(_ledgerMeta,
          ledger.isAcceptableOrUnknown(data['ledger']!, _ledgerMeta));
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('subcategory')) {
      context.handle(
          _subcategoryMeta,
          subcategory.isAcceptableOrUnknown(
              data['subcategory']!, _subcategoryMeta));
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    }
    if (data.containsKey('item_code')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['item_code']!, _itemCodeMeta));
    }
    if (data.containsKey('item_name')) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableOrUnknown(data['item_name']!, _itemNameMeta));
    }
    if (data.containsKey('customer')) {
      context.handle(_customerMeta,
          customer.isAcceptableOrUnknown(data['customer']!, _customerMeta));
    }
    if (data.containsKey('salesman')) {
      context.handle(_salesmanMeta,
          salesman.isAcceptableOrUnknown(data['salesman']!, _salesmanMeta));
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district']!, _districtMeta));
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('sales_type')) {
      context.handle(_salesTypeMeta,
          salesType.isAcceptableOrUnknown(data['sales_type']!, _salesTypeMeta));
    }
    if (data.containsKey('cash')) {
      context.handle(
          _cashMeta, cash.isAcceptableOrUnknown(data['cash']!, _cashMeta));
    }
    if (data.containsKey('bank')) {
      context.handle(
          _bankMeta, bank.isAcceptableOrUnknown(data['bank']!, _bankMeta));
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    }
    if (data.containsKey('android')) {
      context.handle(_androidMeta,
          android.isAcceptableOrUnknown(data['android']!, _androidMeta));
    }
    if (data.containsKey('all_sales_type')) {
      context.handle(
          _allSalesTypeMeta,
          allSalesType.isAcceptableOrUnknown(
              data['all_sales_type']!, _allSalesTypeMeta));
    }
    if (data.containsKey('all_rate_type')) {
      context.handle(
          _allRateTypeMeta,
          allRateType.isAcceptableOrUnknown(
              data['all_rate_type']!, _allRateTypeMeta));
    }
    if (data.containsKey('all_routes')) {
      context.handle(_allRoutesMeta,
          allRoutes.isAcceptableOrUnknown(data['all_routes']!, _allRoutesMeta));
    }
    if (data.containsKey('permissions')) {
      context.handle(
          _permissionsMeta,
          permissions.isAcceptableOrUnknown(
              data['permissions']!, _permissionsMeta));
    }
    if (data.containsKey('gnl_users')) {
      context.handle(_gnlUsersMeta,
          gnlUsers.isAcceptableOrUnknown(data['gnl_users']!, _gnlUsersMeta));
    }
    if (data.containsKey('company2')) {
      context.handle(_company2Meta,
          company2.isAcceptableOrUnknown(data['company2']!, _company2Meta));
    }
    if (data.containsKey('receivingcondition')) {
      context.handle(
          _receivingconditionMeta,
          receivingcondition.isAcceptableOrUnknown(
              data['receivingcondition']!, _receivingconditionMeta));
    }
    if (data.containsKey('servicetype')) {
      context.handle(
          _servicetypeMeta,
          servicetype.isAcceptableOrUnknown(
              data['servicetype']!, _servicetypeMeta));
    }
    if (data.containsKey('complaints')) {
      context.handle(
          _complaintsMeta,
          complaints.isAcceptableOrUnknown(
              data['complaints']!, _complaintsMeta));
    }
    if (data.containsKey('fixtype')) {
      context.handle(_fixtypeMeta,
          fixtype.isAcceptableOrUnknown(data['fixtype']!, _fixtypeMeta));
    }
    if (data.containsKey('workorderstatus')) {
      context.handle(
          _workorderstatusMeta,
          workorderstatus.isAcceptableOrUnknown(
              data['workorderstatus']!, _workorderstatusMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('deliverystatus')) {
      context.handle(
          _deliverystatusMeta,
          deliverystatus.isAcceptableOrUnknown(
              data['deliverystatus']!, _deliverystatusMeta));
    }
    if (data.containsKey('collecteditems')) {
      context.handle(
          _collecteditemsMeta,
          collecteditems.isAcceptableOrUnknown(
              data['collecteditems']!, _collecteditemsMeta));
    }
    if (data.containsKey('form_controls')) {
      context.handle(
          _formControlsMeta,
          formControls.isAcceptableOrUnknown(
              data['form_controls']!, _formControlsMeta));
    }
    if (data.containsKey('lenditems')) {
      context.handle(_lenditemsMeta,
          lenditems.isAcceptableOrUnknown(data['lenditems']!, _lenditemsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      ledger: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ledger']),
      group: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      subcategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subcategory']),
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand']),
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_code']),
      itemName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_name']),
      customer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer']),
      salesman: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}salesman']),
      district: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}district']),
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area']),
      salesType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sales_type']),
      cash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cash']),
      bank: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bank']),
      company: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company']),
      android: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}android']),
      allSalesType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}all_sales_type']),
      allRateType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}all_rate_type']),
      allRoutes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}all_routes']),
      permissions: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}permissions']),
      gnlUsers: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gnl_users']),
      company2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company2']),
      receivingcondition: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}receivingcondition']),
      servicetype: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}servicetype']),
      complaints: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}complaints']),
      fixtype: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fixtype']),
      workorderstatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}workorderstatus']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      deliverystatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}deliverystatus']),
      collecteditems: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}collecteditems']),
      formControls: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form_controls']),
      lenditems: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lenditems']),
    );
  }

  @override
  $SettingsTableTable createAlias(String alias) {
    return $SettingsTableTable(attachedDatabase, alias);
  }
}

class SettingsTableData extends DataClass
    implements Insertable<SettingsTableData> {
  final int id;
  final String? ledger;
  final String? group;
  final String? location;
  final String? category;
  final String? subcategory;
  final String? brand;
  final String? itemCode;
  final String? itemName;
  final String? customer;
  final String? salesman;
  final String? district;
  final String? area;
  final String? salesType;
  final String? cash;
  final String? bank;
  final String? company;
  final String? android;
  final String? allSalesType;
  final String? allRateType;
  final String? allRoutes;
  final String? permissions;
  final String? gnlUsers;
  final String? company2;
  final String? receivingcondition;
  final String? servicetype;
  final String? complaints;
  final String? fixtype;
  final String? workorderstatus;
  final String? color;
  final String? deliverystatus;
  final String? collecteditems;
  final String? formControls;
  final String? lenditems;
  const SettingsTableData(
      {required this.id,
      this.ledger,
      this.group,
      this.location,
      this.category,
      this.subcategory,
      this.brand,
      this.itemCode,
      this.itemName,
      this.customer,
      this.salesman,
      this.district,
      this.area,
      this.salesType,
      this.cash,
      this.bank,
      this.company,
      this.android,
      this.allSalesType,
      this.allRateType,
      this.allRoutes,
      this.permissions,
      this.gnlUsers,
      this.company2,
      this.receivingcondition,
      this.servicetype,
      this.complaints,
      this.fixtype,
      this.workorderstatus,
      this.color,
      this.deliverystatus,
      this.collecteditems,
      this.formControls,
      this.lenditems});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || ledger != null) {
      map['ledger'] = Variable<String>(ledger);
    }
    if (!nullToAbsent || group != null) {
      map['group'] = Variable<String>(group);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || subcategory != null) {
      map['subcategory'] = Variable<String>(subcategory);
    }
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || itemCode != null) {
      map['item_code'] = Variable<String>(itemCode);
    }
    if (!nullToAbsent || itemName != null) {
      map['item_name'] = Variable<String>(itemName);
    }
    if (!nullToAbsent || customer != null) {
      map['customer'] = Variable<String>(customer);
    }
    if (!nullToAbsent || salesman != null) {
      map['salesman'] = Variable<String>(salesman);
    }
    if (!nullToAbsent || district != null) {
      map['district'] = Variable<String>(district);
    }
    if (!nullToAbsent || area != null) {
      map['area'] = Variable<String>(area);
    }
    if (!nullToAbsent || salesType != null) {
      map['sales_type'] = Variable<String>(salesType);
    }
    if (!nullToAbsent || cash != null) {
      map['cash'] = Variable<String>(cash);
    }
    if (!nullToAbsent || bank != null) {
      map['bank'] = Variable<String>(bank);
    }
    if (!nullToAbsent || company != null) {
      map['company'] = Variable<String>(company);
    }
    if (!nullToAbsent || android != null) {
      map['android'] = Variable<String>(android);
    }
    if (!nullToAbsent || allSalesType != null) {
      map['all_sales_type'] = Variable<String>(allSalesType);
    }
    if (!nullToAbsent || allRateType != null) {
      map['all_rate_type'] = Variable<String>(allRateType);
    }
    if (!nullToAbsent || allRoutes != null) {
      map['all_routes'] = Variable<String>(allRoutes);
    }
    if (!nullToAbsent || permissions != null) {
      map['permissions'] = Variable<String>(permissions);
    }
    if (!nullToAbsent || gnlUsers != null) {
      map['gnl_users'] = Variable<String>(gnlUsers);
    }
    if (!nullToAbsent || company2 != null) {
      map['company2'] = Variable<String>(company2);
    }
    if (!nullToAbsent || receivingcondition != null) {
      map['receivingcondition'] = Variable<String>(receivingcondition);
    }
    if (!nullToAbsent || servicetype != null) {
      map['servicetype'] = Variable<String>(servicetype);
    }
    if (!nullToAbsent || complaints != null) {
      map['complaints'] = Variable<String>(complaints);
    }
    if (!nullToAbsent || fixtype != null) {
      map['fixtype'] = Variable<String>(fixtype);
    }
    if (!nullToAbsent || workorderstatus != null) {
      map['workorderstatus'] = Variable<String>(workorderstatus);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || deliverystatus != null) {
      map['deliverystatus'] = Variable<String>(deliverystatus);
    }
    if (!nullToAbsent || collecteditems != null) {
      map['collecteditems'] = Variable<String>(collecteditems);
    }
    if (!nullToAbsent || formControls != null) {
      map['form_controls'] = Variable<String>(formControls);
    }
    if (!nullToAbsent || lenditems != null) {
      map['lenditems'] = Variable<String>(lenditems);
    }
    return map;
  }

  SettingsTableCompanion toCompanion(bool nullToAbsent) {
    return SettingsTableCompanion(
      id: Value(id),
      ledger:
          ledger == null && nullToAbsent ? const Value.absent() : Value(ledger),
      group:
          group == null && nullToAbsent ? const Value.absent() : Value(group),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      subcategory: subcategory == null && nullToAbsent
          ? const Value.absent()
          : Value(subcategory),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      itemCode: itemCode == null && nullToAbsent
          ? const Value.absent()
          : Value(itemCode),
      itemName: itemName == null && nullToAbsent
          ? const Value.absent()
          : Value(itemName),
      customer: customer == null && nullToAbsent
          ? const Value.absent()
          : Value(customer),
      salesman: salesman == null && nullToAbsent
          ? const Value.absent()
          : Value(salesman),
      district: district == null && nullToAbsent
          ? const Value.absent()
          : Value(district),
      area: area == null && nullToAbsent ? const Value.absent() : Value(area),
      salesType: salesType == null && nullToAbsent
          ? const Value.absent()
          : Value(salesType),
      cash: cash == null && nullToAbsent ? const Value.absent() : Value(cash),
      bank: bank == null && nullToAbsent ? const Value.absent() : Value(bank),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      android: android == null && nullToAbsent
          ? const Value.absent()
          : Value(android),
      allSalesType: allSalesType == null && nullToAbsent
          ? const Value.absent()
          : Value(allSalesType),
      allRateType: allRateType == null && nullToAbsent
          ? const Value.absent()
          : Value(allRateType),
      allRoutes: allRoutes == null && nullToAbsent
          ? const Value.absent()
          : Value(allRoutes),
      permissions: permissions == null && nullToAbsent
          ? const Value.absent()
          : Value(permissions),
      gnlUsers: gnlUsers == null && nullToAbsent
          ? const Value.absent()
          : Value(gnlUsers),
      company2: company2 == null && nullToAbsent
          ? const Value.absent()
          : Value(company2),
      receivingcondition: receivingcondition == null && nullToAbsent
          ? const Value.absent()
          : Value(receivingcondition),
      servicetype: servicetype == null && nullToAbsent
          ? const Value.absent()
          : Value(servicetype),
      complaints: complaints == null && nullToAbsent
          ? const Value.absent()
          : Value(complaints),
      fixtype: fixtype == null && nullToAbsent
          ? const Value.absent()
          : Value(fixtype),
      workorderstatus: workorderstatus == null && nullToAbsent
          ? const Value.absent()
          : Value(workorderstatus),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      deliverystatus: deliverystatus == null && nullToAbsent
          ? const Value.absent()
          : Value(deliverystatus),
      collecteditems: collecteditems == null && nullToAbsent
          ? const Value.absent()
          : Value(collecteditems),
      formControls: formControls == null && nullToAbsent
          ? const Value.absent()
          : Value(formControls),
      lenditems: lenditems == null && nullToAbsent
          ? const Value.absent()
          : Value(lenditems),
    );
  }

  factory SettingsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsTableData(
      id: serializer.fromJson<int>(json['id']),
      ledger: serializer.fromJson<String?>(json['ledger']),
      group: serializer.fromJson<String?>(json['group']),
      location: serializer.fromJson<String?>(json['location']),
      category: serializer.fromJson<String?>(json['category']),
      subcategory: serializer.fromJson<String?>(json['subcategory']),
      brand: serializer.fromJson<String?>(json['brand']),
      itemCode: serializer.fromJson<String?>(json['itemCode']),
      itemName: serializer.fromJson<String?>(json['itemName']),
      customer: serializer.fromJson<String?>(json['customer']),
      salesman: serializer.fromJson<String?>(json['salesman']),
      district: serializer.fromJson<String?>(json['district']),
      area: serializer.fromJson<String?>(json['area']),
      salesType: serializer.fromJson<String?>(json['salesType']),
      cash: serializer.fromJson<String?>(json['cash']),
      bank: serializer.fromJson<String?>(json['bank']),
      company: serializer.fromJson<String?>(json['company']),
      android: serializer.fromJson<String?>(json['android']),
      allSalesType: serializer.fromJson<String?>(json['allSalesType']),
      allRateType: serializer.fromJson<String?>(json['allRateType']),
      allRoutes: serializer.fromJson<String?>(json['allRoutes']),
      permissions: serializer.fromJson<String?>(json['permissions']),
      gnlUsers: serializer.fromJson<String?>(json['gnlUsers']),
      company2: serializer.fromJson<String?>(json['company2']),
      receivingcondition:
          serializer.fromJson<String?>(json['receivingcondition']),
      servicetype: serializer.fromJson<String?>(json['servicetype']),
      complaints: serializer.fromJson<String?>(json['complaints']),
      fixtype: serializer.fromJson<String?>(json['fixtype']),
      workorderstatus: serializer.fromJson<String?>(json['workorderstatus']),
      color: serializer.fromJson<String?>(json['color']),
      deliverystatus: serializer.fromJson<String?>(json['deliverystatus']),
      collecteditems: serializer.fromJson<String?>(json['collecteditems']),
      formControls: serializer.fromJson<String?>(json['formControls']),
      lenditems: serializer.fromJson<String?>(json['lenditems']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ledger': serializer.toJson<String?>(ledger),
      'group': serializer.toJson<String?>(group),
      'location': serializer.toJson<String?>(location),
      'category': serializer.toJson<String?>(category),
      'subcategory': serializer.toJson<String?>(subcategory),
      'brand': serializer.toJson<String?>(brand),
      'itemCode': serializer.toJson<String?>(itemCode),
      'itemName': serializer.toJson<String?>(itemName),
      'customer': serializer.toJson<String?>(customer),
      'salesman': serializer.toJson<String?>(salesman),
      'district': serializer.toJson<String?>(district),
      'area': serializer.toJson<String?>(area),
      'salesType': serializer.toJson<String?>(salesType),
      'cash': serializer.toJson<String?>(cash),
      'bank': serializer.toJson<String?>(bank),
      'company': serializer.toJson<String?>(company),
      'android': serializer.toJson<String?>(android),
      'allSalesType': serializer.toJson<String?>(allSalesType),
      'allRateType': serializer.toJson<String?>(allRateType),
      'allRoutes': serializer.toJson<String?>(allRoutes),
      'permissions': serializer.toJson<String?>(permissions),
      'gnlUsers': serializer.toJson<String?>(gnlUsers),
      'company2': serializer.toJson<String?>(company2),
      'receivingcondition': serializer.toJson<String?>(receivingcondition),
      'servicetype': serializer.toJson<String?>(servicetype),
      'complaints': serializer.toJson<String?>(complaints),
      'fixtype': serializer.toJson<String?>(fixtype),
      'workorderstatus': serializer.toJson<String?>(workorderstatus),
      'color': serializer.toJson<String?>(color),
      'deliverystatus': serializer.toJson<String?>(deliverystatus),
      'collecteditems': serializer.toJson<String?>(collecteditems),
      'formControls': serializer.toJson<String?>(formControls),
      'lenditems': serializer.toJson<String?>(lenditems),
    };
  }

  SettingsTableData copyWith(
          {int? id,
          Value<String?> ledger = const Value.absent(),
          Value<String?> group = const Value.absent(),
          Value<String?> location = const Value.absent(),
          Value<String?> category = const Value.absent(),
          Value<String?> subcategory = const Value.absent(),
          Value<String?> brand = const Value.absent(),
          Value<String?> itemCode = const Value.absent(),
          Value<String?> itemName = const Value.absent(),
          Value<String?> customer = const Value.absent(),
          Value<String?> salesman = const Value.absent(),
          Value<String?> district = const Value.absent(),
          Value<String?> area = const Value.absent(),
          Value<String?> salesType = const Value.absent(),
          Value<String?> cash = const Value.absent(),
          Value<String?> bank = const Value.absent(),
          Value<String?> company = const Value.absent(),
          Value<String?> android = const Value.absent(),
          Value<String?> allSalesType = const Value.absent(),
          Value<String?> allRateType = const Value.absent(),
          Value<String?> allRoutes = const Value.absent(),
          Value<String?> permissions = const Value.absent(),
          Value<String?> gnlUsers = const Value.absent(),
          Value<String?> company2 = const Value.absent(),
          Value<String?> receivingcondition = const Value.absent(),
          Value<String?> servicetype = const Value.absent(),
          Value<String?> complaints = const Value.absent(),
          Value<String?> fixtype = const Value.absent(),
          Value<String?> workorderstatus = const Value.absent(),
          Value<String?> color = const Value.absent(),
          Value<String?> deliverystatus = const Value.absent(),
          Value<String?> collecteditems = const Value.absent(),
          Value<String?> formControls = const Value.absent(),
          Value<String?> lenditems = const Value.absent()}) =>
      SettingsTableData(
        id: id ?? this.id,
        ledger: ledger.present ? ledger.value : this.ledger,
        group: group.present ? group.value : this.group,
        location: location.present ? location.value : this.location,
        category: category.present ? category.value : this.category,
        subcategory: subcategory.present ? subcategory.value : this.subcategory,
        brand: brand.present ? brand.value : this.brand,
        itemCode: itemCode.present ? itemCode.value : this.itemCode,
        itemName: itemName.present ? itemName.value : this.itemName,
        customer: customer.present ? customer.value : this.customer,
        salesman: salesman.present ? salesman.value : this.salesman,
        district: district.present ? district.value : this.district,
        area: area.present ? area.value : this.area,
        salesType: salesType.present ? salesType.value : this.salesType,
        cash: cash.present ? cash.value : this.cash,
        bank: bank.present ? bank.value : this.bank,
        company: company.present ? company.value : this.company,
        android: android.present ? android.value : this.android,
        allSalesType:
            allSalesType.present ? allSalesType.value : this.allSalesType,
        allRateType: allRateType.present ? allRateType.value : this.allRateType,
        allRoutes: allRoutes.present ? allRoutes.value : this.allRoutes,
        permissions: permissions.present ? permissions.value : this.permissions,
        gnlUsers: gnlUsers.present ? gnlUsers.value : this.gnlUsers,
        company2: company2.present ? company2.value : this.company2,
        receivingcondition: receivingcondition.present
            ? receivingcondition.value
            : this.receivingcondition,
        servicetype: servicetype.present ? servicetype.value : this.servicetype,
        complaints: complaints.present ? complaints.value : this.complaints,
        fixtype: fixtype.present ? fixtype.value : this.fixtype,
        workorderstatus: workorderstatus.present
            ? workorderstatus.value
            : this.workorderstatus,
        color: color.present ? color.value : this.color,
        deliverystatus:
            deliverystatus.present ? deliverystatus.value : this.deliverystatus,
        collecteditems:
            collecteditems.present ? collecteditems.value : this.collecteditems,
        formControls:
            formControls.present ? formControls.value : this.formControls,
        lenditems: lenditems.present ? lenditems.value : this.lenditems,
      );
  @override
  String toString() {
    return (StringBuffer('SettingsTableData(')
          ..write('id: $id, ')
          ..write('ledger: $ledger, ')
          ..write('group: $group, ')
          ..write('location: $location, ')
          ..write('category: $category, ')
          ..write('subcategory: $subcategory, ')
          ..write('brand: $brand, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemName: $itemName, ')
          ..write('customer: $customer, ')
          ..write('salesman: $salesman, ')
          ..write('district: $district, ')
          ..write('area: $area, ')
          ..write('salesType: $salesType, ')
          ..write('cash: $cash, ')
          ..write('bank: $bank, ')
          ..write('company: $company, ')
          ..write('android: $android, ')
          ..write('allSalesType: $allSalesType, ')
          ..write('allRateType: $allRateType, ')
          ..write('allRoutes: $allRoutes, ')
          ..write('permissions: $permissions, ')
          ..write('gnlUsers: $gnlUsers, ')
          ..write('company2: $company2, ')
          ..write('receivingcondition: $receivingcondition, ')
          ..write('servicetype: $servicetype, ')
          ..write('complaints: $complaints, ')
          ..write('fixtype: $fixtype, ')
          ..write('workorderstatus: $workorderstatus, ')
          ..write('color: $color, ')
          ..write('deliverystatus: $deliverystatus, ')
          ..write('collecteditems: $collecteditems, ')
          ..write('formControls: $formControls, ')
          ..write('lenditems: $lenditems')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        ledger,
        group,
        location,
        category,
        subcategory,
        brand,
        itemCode,
        itemName,
        customer,
        salesman,
        district,
        area,
        salesType,
        cash,
        bank,
        company,
        android,
        allSalesType,
        allRateType,
        allRoutes,
        permissions,
        gnlUsers,
        company2,
        receivingcondition,
        servicetype,
        complaints,
        fixtype,
        workorderstatus,
        color,
        deliverystatus,
        collecteditems,
        formControls,
        lenditems
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsTableData &&
          other.id == this.id &&
          other.ledger == this.ledger &&
          other.group == this.group &&
          other.location == this.location &&
          other.category == this.category &&
          other.subcategory == this.subcategory &&
          other.brand == this.brand &&
          other.itemCode == this.itemCode &&
          other.itemName == this.itemName &&
          other.customer == this.customer &&
          other.salesman == this.salesman &&
          other.district == this.district &&
          other.area == this.area &&
          other.salesType == this.salesType &&
          other.cash == this.cash &&
          other.bank == this.bank &&
          other.company == this.company &&
          other.android == this.android &&
          other.allSalesType == this.allSalesType &&
          other.allRateType == this.allRateType &&
          other.allRoutes == this.allRoutes &&
          other.permissions == this.permissions &&
          other.gnlUsers == this.gnlUsers &&
          other.company2 == this.company2 &&
          other.receivingcondition == this.receivingcondition &&
          other.servicetype == this.servicetype &&
          other.complaints == this.complaints &&
          other.fixtype == this.fixtype &&
          other.workorderstatus == this.workorderstatus &&
          other.color == this.color &&
          other.deliverystatus == this.deliverystatus &&
          other.collecteditems == this.collecteditems &&
          other.formControls == this.formControls &&
          other.lenditems == this.lenditems);
}

class SettingsTableCompanion extends UpdateCompanion<SettingsTableData> {
  final Value<int> id;
  final Value<String?> ledger;
  final Value<String?> group;
  final Value<String?> location;
  final Value<String?> category;
  final Value<String?> subcategory;
  final Value<String?> brand;
  final Value<String?> itemCode;
  final Value<String?> itemName;
  final Value<String?> customer;
  final Value<String?> salesman;
  final Value<String?> district;
  final Value<String?> area;
  final Value<String?> salesType;
  final Value<String?> cash;
  final Value<String?> bank;
  final Value<String?> company;
  final Value<String?> android;
  final Value<String?> allSalesType;
  final Value<String?> allRateType;
  final Value<String?> allRoutes;
  final Value<String?> permissions;
  final Value<String?> gnlUsers;
  final Value<String?> company2;
  final Value<String?> receivingcondition;
  final Value<String?> servicetype;
  final Value<String?> complaints;
  final Value<String?> fixtype;
  final Value<String?> workorderstatus;
  final Value<String?> color;
  final Value<String?> deliverystatus;
  final Value<String?> collecteditems;
  final Value<String?> formControls;
  final Value<String?> lenditems;
  const SettingsTableCompanion({
    this.id = const Value.absent(),
    this.ledger = const Value.absent(),
    this.group = const Value.absent(),
    this.location = const Value.absent(),
    this.category = const Value.absent(),
    this.subcategory = const Value.absent(),
    this.brand = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemName = const Value.absent(),
    this.customer = const Value.absent(),
    this.salesman = const Value.absent(),
    this.district = const Value.absent(),
    this.area = const Value.absent(),
    this.salesType = const Value.absent(),
    this.cash = const Value.absent(),
    this.bank = const Value.absent(),
    this.company = const Value.absent(),
    this.android = const Value.absent(),
    this.allSalesType = const Value.absent(),
    this.allRateType = const Value.absent(),
    this.allRoutes = const Value.absent(),
    this.permissions = const Value.absent(),
    this.gnlUsers = const Value.absent(),
    this.company2 = const Value.absent(),
    this.receivingcondition = const Value.absent(),
    this.servicetype = const Value.absent(),
    this.complaints = const Value.absent(),
    this.fixtype = const Value.absent(),
    this.workorderstatus = const Value.absent(),
    this.color = const Value.absent(),
    this.deliverystatus = const Value.absent(),
    this.collecteditems = const Value.absent(),
    this.formControls = const Value.absent(),
    this.lenditems = const Value.absent(),
  });
  SettingsTableCompanion.insert({
    this.id = const Value.absent(),
    this.ledger = const Value.absent(),
    this.group = const Value.absent(),
    this.location = const Value.absent(),
    this.category = const Value.absent(),
    this.subcategory = const Value.absent(),
    this.brand = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemName = const Value.absent(),
    this.customer = const Value.absent(),
    this.salesman = const Value.absent(),
    this.district = const Value.absent(),
    this.area = const Value.absent(),
    this.salesType = const Value.absent(),
    this.cash = const Value.absent(),
    this.bank = const Value.absent(),
    this.company = const Value.absent(),
    this.android = const Value.absent(),
    this.allSalesType = const Value.absent(),
    this.allRateType = const Value.absent(),
    this.allRoutes = const Value.absent(),
    this.permissions = const Value.absent(),
    this.gnlUsers = const Value.absent(),
    this.company2 = const Value.absent(),
    this.receivingcondition = const Value.absent(),
    this.servicetype = const Value.absent(),
    this.complaints = const Value.absent(),
    this.fixtype = const Value.absent(),
    this.workorderstatus = const Value.absent(),
    this.color = const Value.absent(),
    this.deliverystatus = const Value.absent(),
    this.collecteditems = const Value.absent(),
    this.formControls = const Value.absent(),
    this.lenditems = const Value.absent(),
  });
  static Insertable<SettingsTableData> custom({
    Expression<int>? id,
    Expression<String>? ledger,
    Expression<String>? group,
    Expression<String>? location,
    Expression<String>? category,
    Expression<String>? subcategory,
    Expression<String>? brand,
    Expression<String>? itemCode,
    Expression<String>? itemName,
    Expression<String>? customer,
    Expression<String>? salesman,
    Expression<String>? district,
    Expression<String>? area,
    Expression<String>? salesType,
    Expression<String>? cash,
    Expression<String>? bank,
    Expression<String>? company,
    Expression<String>? android,
    Expression<String>? allSalesType,
    Expression<String>? allRateType,
    Expression<String>? allRoutes,
    Expression<String>? permissions,
    Expression<String>? gnlUsers,
    Expression<String>? company2,
    Expression<String>? receivingcondition,
    Expression<String>? servicetype,
    Expression<String>? complaints,
    Expression<String>? fixtype,
    Expression<String>? workorderstatus,
    Expression<String>? color,
    Expression<String>? deliverystatus,
    Expression<String>? collecteditems,
    Expression<String>? formControls,
    Expression<String>? lenditems,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ledger != null) 'ledger': ledger,
      if (group != null) 'group': group,
      if (location != null) 'location': location,
      if (category != null) 'category': category,
      if (subcategory != null) 'subcategory': subcategory,
      if (brand != null) 'brand': brand,
      if (itemCode != null) 'item_code': itemCode,
      if (itemName != null) 'item_name': itemName,
      if (customer != null) 'customer': customer,
      if (salesman != null) 'salesman': salesman,
      if (district != null) 'district': district,
      if (area != null) 'area': area,
      if (salesType != null) 'sales_type': salesType,
      if (cash != null) 'cash': cash,
      if (bank != null) 'bank': bank,
      if (company != null) 'company': company,
      if (android != null) 'android': android,
      if (allSalesType != null) 'all_sales_type': allSalesType,
      if (allRateType != null) 'all_rate_type': allRateType,
      if (allRoutes != null) 'all_routes': allRoutes,
      if (permissions != null) 'permissions': permissions,
      if (gnlUsers != null) 'gnl_users': gnlUsers,
      if (company2 != null) 'company2': company2,
      if (receivingcondition != null) 'receivingcondition': receivingcondition,
      if (servicetype != null) 'servicetype': servicetype,
      if (complaints != null) 'complaints': complaints,
      if (fixtype != null) 'fixtype': fixtype,
      if (workorderstatus != null) 'workorderstatus': workorderstatus,
      if (color != null) 'color': color,
      if (deliverystatus != null) 'deliverystatus': deliverystatus,
      if (collecteditems != null) 'collecteditems': collecteditems,
      if (formControls != null) 'form_controls': formControls,
      if (lenditems != null) 'lenditems': lenditems,
    });
  }

  SettingsTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? ledger,
      Value<String?>? group,
      Value<String?>? location,
      Value<String?>? category,
      Value<String?>? subcategory,
      Value<String?>? brand,
      Value<String?>? itemCode,
      Value<String?>? itemName,
      Value<String?>? customer,
      Value<String?>? salesman,
      Value<String?>? district,
      Value<String?>? area,
      Value<String?>? salesType,
      Value<String?>? cash,
      Value<String?>? bank,
      Value<String?>? company,
      Value<String?>? android,
      Value<String?>? allSalesType,
      Value<String?>? allRateType,
      Value<String?>? allRoutes,
      Value<String?>? permissions,
      Value<String?>? gnlUsers,
      Value<String?>? company2,
      Value<String?>? receivingcondition,
      Value<String?>? servicetype,
      Value<String?>? complaints,
      Value<String?>? fixtype,
      Value<String?>? workorderstatus,
      Value<String?>? color,
      Value<String?>? deliverystatus,
      Value<String?>? collecteditems,
      Value<String?>? formControls,
      Value<String?>? lenditems}) {
    return SettingsTableCompanion(
      id: id ?? this.id,
      ledger: ledger ?? this.ledger,
      group: group ?? this.group,
      location: location ?? this.location,
      category: category ?? this.category,
      subcategory: subcategory ?? this.subcategory,
      brand: brand ?? this.brand,
      itemCode: itemCode ?? this.itemCode,
      itemName: itemName ?? this.itemName,
      customer: customer ?? this.customer,
      salesman: salesman ?? this.salesman,
      district: district ?? this.district,
      area: area ?? this.area,
      salesType: salesType ?? this.salesType,
      cash: cash ?? this.cash,
      bank: bank ?? this.bank,
      company: company ?? this.company,
      android: android ?? this.android,
      allSalesType: allSalesType ?? this.allSalesType,
      allRateType: allRateType ?? this.allRateType,
      allRoutes: allRoutes ?? this.allRoutes,
      permissions: permissions ?? this.permissions,
      gnlUsers: gnlUsers ?? this.gnlUsers,
      company2: company2 ?? this.company2,
      receivingcondition: receivingcondition ?? this.receivingcondition,
      servicetype: servicetype ?? this.servicetype,
      complaints: complaints ?? this.complaints,
      fixtype: fixtype ?? this.fixtype,
      workorderstatus: workorderstatus ?? this.workorderstatus,
      color: color ?? this.color,
      deliverystatus: deliverystatus ?? this.deliverystatus,
      collecteditems: collecteditems ?? this.collecteditems,
      formControls: formControls ?? this.formControls,
      lenditems: lenditems ?? this.lenditems,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ledger.present) {
      map['ledger'] = Variable<String>(ledger.value);
    }
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (subcategory.present) {
      map['subcategory'] = Variable<String>(subcategory.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (itemCode.present) {
      map['item_code'] = Variable<String>(itemCode.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (customer.present) {
      map['customer'] = Variable<String>(customer.value);
    }
    if (salesman.present) {
      map['salesman'] = Variable<String>(salesman.value);
    }
    if (district.present) {
      map['district'] = Variable<String>(district.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (salesType.present) {
      map['sales_type'] = Variable<String>(salesType.value);
    }
    if (cash.present) {
      map['cash'] = Variable<String>(cash.value);
    }
    if (bank.present) {
      map['bank'] = Variable<String>(bank.value);
    }
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    if (android.present) {
      map['android'] = Variable<String>(android.value);
    }
    if (allSalesType.present) {
      map['all_sales_type'] = Variable<String>(allSalesType.value);
    }
    if (allRateType.present) {
      map['all_rate_type'] = Variable<String>(allRateType.value);
    }
    if (allRoutes.present) {
      map['all_routes'] = Variable<String>(allRoutes.value);
    }
    if (permissions.present) {
      map['permissions'] = Variable<String>(permissions.value);
    }
    if (gnlUsers.present) {
      map['gnl_users'] = Variable<String>(gnlUsers.value);
    }
    if (company2.present) {
      map['company2'] = Variable<String>(company2.value);
    }
    if (receivingcondition.present) {
      map['receivingcondition'] = Variable<String>(receivingcondition.value);
    }
    if (servicetype.present) {
      map['servicetype'] = Variable<String>(servicetype.value);
    }
    if (complaints.present) {
      map['complaints'] = Variable<String>(complaints.value);
    }
    if (fixtype.present) {
      map['fixtype'] = Variable<String>(fixtype.value);
    }
    if (workorderstatus.present) {
      map['workorderstatus'] = Variable<String>(workorderstatus.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (deliverystatus.present) {
      map['deliverystatus'] = Variable<String>(deliverystatus.value);
    }
    if (collecteditems.present) {
      map['collecteditems'] = Variable<String>(collecteditems.value);
    }
    if (formControls.present) {
      map['form_controls'] = Variable<String>(formControls.value);
    }
    if (lenditems.present) {
      map['lenditems'] = Variable<String>(lenditems.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsTableCompanion(')
          ..write('id: $id, ')
          ..write('ledger: $ledger, ')
          ..write('group: $group, ')
          ..write('location: $location, ')
          ..write('category: $category, ')
          ..write('subcategory: $subcategory, ')
          ..write('brand: $brand, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemName: $itemName, ')
          ..write('customer: $customer, ')
          ..write('salesman: $salesman, ')
          ..write('district: $district, ')
          ..write('area: $area, ')
          ..write('salesType: $salesType, ')
          ..write('cash: $cash, ')
          ..write('bank: $bank, ')
          ..write('company: $company, ')
          ..write('android: $android, ')
          ..write('allSalesType: $allSalesType, ')
          ..write('allRateType: $allRateType, ')
          ..write('allRoutes: $allRoutes, ')
          ..write('permissions: $permissions, ')
          ..write('gnlUsers: $gnlUsers, ')
          ..write('company2: $company2, ')
          ..write('receivingcondition: $receivingcondition, ')
          ..write('servicetype: $servicetype, ')
          ..write('complaints: $complaints, ')
          ..write('fixtype: $fixtype, ')
          ..write('workorderstatus: $workorderstatus, ')
          ..write('color: $color, ')
          ..write('deliverystatus: $deliverystatus, ')
          ..write('collecteditems: $collecteditems, ')
          ..write('formControls: $formControls, ')
          ..write('lenditems: $lenditems')
          ..write(')'))
        .toString();
  }
}

class $LedgerTableTable extends LedgerTable
    with TableInfo<$LedgerTableTable, LedgerTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LedgerTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _ledgerDataMeta =
      const VerificationMeta('ledgerData');
  @override
  late final GeneratedColumn<String> ledgerData = GeneratedColumn<String>(
      'ledger_data', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, ledgerData];
  @override
  String get aliasedName => _alias ?? 'ledger_table';
  @override
  String get actualTableName => 'ledger_table';
  @override
  VerificationContext validateIntegrity(Insertable<LedgerTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ledger_data')) {
      context.handle(
          _ledgerDataMeta,
          ledgerData.isAcceptableOrUnknown(
              data['ledger_data']!, _ledgerDataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LedgerTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LedgerTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      ledgerData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ledger_data']),
    );
  }

  @override
  $LedgerTableTable createAlias(String alias) {
    return $LedgerTableTable(attachedDatabase, alias);
  }
}

class LedgerTableData extends DataClass implements Insertable<LedgerTableData> {
  final int id;
  final String? ledgerData;
  const LedgerTableData({required this.id, this.ledgerData});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || ledgerData != null) {
      map['ledger_data'] = Variable<String>(ledgerData);
    }
    return map;
  }

  LedgerTableCompanion toCompanion(bool nullToAbsent) {
    return LedgerTableCompanion(
      id: Value(id),
      ledgerData: ledgerData == null && nullToAbsent
          ? const Value.absent()
          : Value(ledgerData),
    );
  }

  factory LedgerTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LedgerTableData(
      id: serializer.fromJson<int>(json['id']),
      ledgerData: serializer.fromJson<String?>(json['ledgerData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ledgerData': serializer.toJson<String?>(ledgerData),
    };
  }

  LedgerTableData copyWith(
          {int? id, Value<String?> ledgerData = const Value.absent()}) =>
      LedgerTableData(
        id: id ?? this.id,
        ledgerData: ledgerData.present ? ledgerData.value : this.ledgerData,
      );
  @override
  String toString() {
    return (StringBuffer('LedgerTableData(')
          ..write('id: $id, ')
          ..write('ledgerData: $ledgerData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ledgerData);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LedgerTableData &&
          other.id == this.id &&
          other.ledgerData == this.ledgerData);
}

class LedgerTableCompanion extends UpdateCompanion<LedgerTableData> {
  final Value<int> id;
  final Value<String?> ledgerData;
  const LedgerTableCompanion({
    this.id = const Value.absent(),
    this.ledgerData = const Value.absent(),
  });
  LedgerTableCompanion.insert({
    this.id = const Value.absent(),
    this.ledgerData = const Value.absent(),
  });
  static Insertable<LedgerTableData> custom({
    Expression<int>? id,
    Expression<String>? ledgerData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ledgerData != null) 'ledger_data': ledgerData,
    });
  }

  LedgerTableCompanion copyWith({Value<int>? id, Value<String?>? ledgerData}) {
    return LedgerTableCompanion(
      id: id ?? this.id,
      ledgerData: ledgerData ?? this.ledgerData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ledgerData.present) {
      map['ledger_data'] = Variable<String>(ledgerData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LedgerTableCompanion(')
          ..write('id: $id, ')
          ..write('ledgerData: $ledgerData')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $SettingsTableTable settingsTable = $SettingsTableTable(this);
  late final $LedgerTableTable ledgerTable = $LedgerTableTable(this);
  Selectable<int?> getMaxUserId() {
    return customSelect('SELECT max(id) AS _c0 FROM ledger_table',
        variables: [],
        readsFrom: {
          ledgerTable,
        }).map((QueryRow row) => row.readNullable<int>('_c0'));
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [settingsTable, ledgerTable];
}
