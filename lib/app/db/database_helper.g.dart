// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_helper.dart';

// ignore_for_file: type=lint
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
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _asRateTypeMeta =
      const VerificationMeta('asRateType');
  @override
  late final GeneratedColumn<String> asRateType = GeneratedColumn<String>(
      'as_rate_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tinMeta = const VerificationMeta('tin');
  @override
  late final GeneratedColumn<String> tin = GeneratedColumn<String>(
      'tin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value, asRateType, tin];
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
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    if (data.containsKey('as_rate_type')) {
      context.handle(
          _asRateTypeMeta,
          asRateType.isAcceptableOrUnknown(
              data['as_rate_type']!, _asRateTypeMeta));
    }
    if (data.containsKey('tin')) {
      context.handle(
          _tinMeta, tin.isAcceptableOrUnknown(data['tin']!, _tinMeta));
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
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
      asRateType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}as_rate_type']),
      tin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tin']),
    );
  }

  @override
  $LedgerTableTable createAlias(String alias) {
    return $LedgerTableTable(attachedDatabase, alias);
  }
}

class LedgerTableData extends DataClass implements Insertable<LedgerTableData> {
  final int id;
  final String? label;
  final double? value;
  final String? asRateType;
  final String? tin;
  const LedgerTableData(
      {required this.id, this.label, this.value, this.asRateType, this.tin});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    if (!nullToAbsent || asRateType != null) {
      map['as_rate_type'] = Variable<String>(asRateType);
    }
    if (!nullToAbsent || tin != null) {
      map['tin'] = Variable<String>(tin);
    }
    return map;
  }

  LedgerTableCompanion toCompanion(bool nullToAbsent) {
    return LedgerTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      asRateType: asRateType == null && nullToAbsent
          ? const Value.absent()
          : Value(asRateType),
      tin: tin == null && nullToAbsent ? const Value.absent() : Value(tin),
    );
  }

  factory LedgerTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LedgerTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
      asRateType: serializer.fromJson<String?>(json['asRateType']),
      tin: serializer.fromJson<String?>(json['tin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
      'asRateType': serializer.toJson<String?>(asRateType),
      'tin': serializer.toJson<String?>(tin),
    };
  }

  LedgerTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent(),
          Value<String?> asRateType = const Value.absent(),
          Value<String?> tin = const Value.absent()}) =>
      LedgerTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
        asRateType: asRateType.present ? asRateType.value : this.asRateType,
        tin: tin.present ? tin.value : this.tin,
      );
  @override
  String toString() {
    return (StringBuffer('LedgerTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value, ')
          ..write('asRateType: $asRateType, ')
          ..write('tin: $tin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value, asRateType, tin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LedgerTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value &&
          other.asRateType == this.asRateType &&
          other.tin == this.tin);
}

class LedgerTableCompanion extends UpdateCompanion<LedgerTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  final Value<String?> asRateType;
  final Value<String?> tin;
  const LedgerTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
    this.asRateType = const Value.absent(),
    this.tin = const Value.absent(),
  });
  LedgerTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
    this.asRateType = const Value.absent(),
    this.tin = const Value.absent(),
  });
  static Insertable<LedgerTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
    Expression<String>? asRateType,
    Expression<String>? tin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
      if (asRateType != null) 'as_rate_type': asRateType,
      if (tin != null) 'tin': tin,
    });
  }

  LedgerTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? label,
      Value<double?>? value,
      Value<String?>? asRateType,
      Value<String?>? tin}) {
    return LedgerTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
      asRateType: asRateType ?? this.asRateType,
      tin: tin ?? this.tin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (asRateType.present) {
      map['as_rate_type'] = Variable<String>(asRateType.value);
    }
    if (tin.present) {
      map['tin'] = Variable<String>(tin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LedgerTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value, ')
          ..write('asRateType: $asRateType, ')
          ..write('tin: $tin')
          ..write(')'))
        .toString();
  }
}

class $GroupTableTable extends GroupTable
    with TableInfo<$GroupTableTable, GroupTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'group_table';
  @override
  String get actualTableName => 'group_table';
  @override
  VerificationContext validateIntegrity(Insertable<GroupTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GroupTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroupTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $GroupTableTable createAlias(String alias) {
    return $GroupTableTable(attachedDatabase, alias);
  }
}

class GroupTableData extends DataClass implements Insertable<GroupTableData> {
  final int id;
  final String? label;
  final double? value;
  const GroupTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  GroupTableCompanion toCompanion(bool nullToAbsent) {
    return GroupTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory GroupTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroupTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  GroupTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      GroupTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('GroupTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroupTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class GroupTableCompanion extends UpdateCompanion<GroupTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const GroupTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  GroupTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<GroupTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  GroupTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return GroupTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $LocationTableTable extends LocationTable
    with TableInfo<$LocationTableTable, LocationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'location_table';
  @override
  String get actualTableName => 'location_table';
  @override
  VerificationContext validateIntegrity(Insertable<LocationTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocationTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocationTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $LocationTableTable createAlias(String alias) {
    return $LocationTableTable(attachedDatabase, alias);
  }
}

class LocationTableData extends DataClass
    implements Insertable<LocationTableData> {
  final int id;
  final String? label;
  final double? value;
  const LocationTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  LocationTableCompanion toCompanion(bool nullToAbsent) {
    return LocationTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory LocationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  LocationTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      LocationTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('LocationTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class LocationTableCompanion extends UpdateCompanion<LocationTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const LocationTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  LocationTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<LocationTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  LocationTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return LocationTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, CategoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'category_table';
  @override
  String get actualTableName => 'category_table';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class CategoryTableData extends DataClass
    implements Insertable<CategoryTableData> {
  final int id;
  final String? label;
  final double? value;
  const CategoryTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory CategoryTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  CategoryTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      CategoryTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const CategoryTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<CategoryTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return CategoryTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $SubcategoryTableTable extends SubcategoryTable
    with TableInfo<$SubcategoryTableTable, SubcategoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubcategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'subcategory_table';
  @override
  String get actualTableName => 'subcategory_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<SubcategoryTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubcategoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubcategoryTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $SubcategoryTableTable createAlias(String alias) {
    return $SubcategoryTableTable(attachedDatabase, alias);
  }
}

class SubcategoryTableData extends DataClass
    implements Insertable<SubcategoryTableData> {
  final int id;
  final String? label;
  final double? value;
  const SubcategoryTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  SubcategoryTableCompanion toCompanion(bool nullToAbsent) {
    return SubcategoryTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory SubcategoryTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubcategoryTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  SubcategoryTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      SubcategoryTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('SubcategoryTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubcategoryTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class SubcategoryTableCompanion extends UpdateCompanion<SubcategoryTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const SubcategoryTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  SubcategoryTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<SubcategoryTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  SubcategoryTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return SubcategoryTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubcategoryTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $BrandTableTable extends BrandTable
    with TableInfo<$BrandTableTable, BrandTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BrandTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'brand_table';
  @override
  String get actualTableName => 'brand_table';
  @override
  VerificationContext validateIntegrity(Insertable<BrandTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BrandTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BrandTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $BrandTableTable createAlias(String alias) {
    return $BrandTableTable(attachedDatabase, alias);
  }
}

class BrandTableData extends DataClass implements Insertable<BrandTableData> {
  final int id;
  final String? label;
  final double? value;
  const BrandTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  BrandTableCompanion toCompanion(bool nullToAbsent) {
    return BrandTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory BrandTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BrandTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  BrandTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      BrandTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('BrandTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BrandTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class BrandTableCompanion extends UpdateCompanion<BrandTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const BrandTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  BrandTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<BrandTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  BrandTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return BrandTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BrandTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $ItemCodeTableTable extends ItemCodeTable
    with TableInfo<$ItemCodeTableTable, ItemCodeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemCodeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'item_code_table';
  @override
  String get actualTableName => 'item_code_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemCodeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemCodeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemCodeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $ItemCodeTableTable createAlias(String alias) {
    return $ItemCodeTableTable(attachedDatabase, alias);
  }
}

class ItemCodeTableData extends DataClass
    implements Insertable<ItemCodeTableData> {
  final int id;
  final String? label;
  final double? value;
  const ItemCodeTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  ItemCodeTableCompanion toCompanion(bool nullToAbsent) {
    return ItemCodeTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory ItemCodeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemCodeTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  ItemCodeTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      ItemCodeTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('ItemCodeTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemCodeTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class ItemCodeTableCompanion extends UpdateCompanion<ItemCodeTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const ItemCodeTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  ItemCodeTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<ItemCodeTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  ItemCodeTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return ItemCodeTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemCodeTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $ItemNameTableTable extends ItemNameTable
    with TableInfo<$ItemNameTableTable, ItemNameTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemNameTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'item_name_table';
  @override
  String get actualTableName => 'item_name_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemNameTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemNameTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemNameTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $ItemNameTableTable createAlias(String alias) {
    return $ItemNameTableTable(attachedDatabase, alias);
  }
}

class ItemNameTableData extends DataClass
    implements Insertable<ItemNameTableData> {
  final int id;
  final String? label;
  final double? value;
  const ItemNameTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  ItemNameTableCompanion toCompanion(bool nullToAbsent) {
    return ItemNameTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory ItemNameTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemNameTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  ItemNameTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      ItemNameTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('ItemNameTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemNameTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class ItemNameTableCompanion extends UpdateCompanion<ItemNameTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const ItemNameTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  ItemNameTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<ItemNameTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  ItemNameTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return ItemNameTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemNameTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $CustomerTableTable extends CustomerTable
    with TableInfo<$CustomerTableTable, CustomerTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _asRateTypeMeta =
      const VerificationMeta('asRateType');
  @override
  late final GeneratedColumn<String> asRateType = GeneratedColumn<String>(
      'as_rate_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tinMeta = const VerificationMeta('tin');
  @override
  late final GeneratedColumn<String> tin = GeneratedColumn<String>(
      'tin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value, asRateType, tin];
  @override
  String get aliasedName => _alias ?? 'customer_table';
  @override
  String get actualTableName => 'customer_table';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    if (data.containsKey('as_rate_type')) {
      context.handle(
          _asRateTypeMeta,
          asRateType.isAcceptableOrUnknown(
              data['as_rate_type']!, _asRateTypeMeta));
    }
    if (data.containsKey('tin')) {
      context.handle(
          _tinMeta, tin.isAcceptableOrUnknown(data['tin']!, _tinMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
      asRateType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}as_rate_type']),
      tin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tin']),
    );
  }

  @override
  $CustomerTableTable createAlias(String alias) {
    return $CustomerTableTable(attachedDatabase, alias);
  }
}

class CustomerTableData extends DataClass
    implements Insertable<CustomerTableData> {
  final int id;
  final String? label;
  final double? value;
  final String? asRateType;
  final String? tin;
  const CustomerTableData(
      {required this.id, this.label, this.value, this.asRateType, this.tin});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    if (!nullToAbsent || asRateType != null) {
      map['as_rate_type'] = Variable<String>(asRateType);
    }
    if (!nullToAbsent || tin != null) {
      map['tin'] = Variable<String>(tin);
    }
    return map;
  }

  CustomerTableCompanion toCompanion(bool nullToAbsent) {
    return CustomerTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      asRateType: asRateType == null && nullToAbsent
          ? const Value.absent()
          : Value(asRateType),
      tin: tin == null && nullToAbsent ? const Value.absent() : Value(tin),
    );
  }

  factory CustomerTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
      asRateType: serializer.fromJson<String?>(json['asRateType']),
      tin: serializer.fromJson<String?>(json['tin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
      'asRateType': serializer.toJson<String?>(asRateType),
      'tin': serializer.toJson<String?>(tin),
    };
  }

  CustomerTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent(),
          Value<String?> asRateType = const Value.absent(),
          Value<String?> tin = const Value.absent()}) =>
      CustomerTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
        asRateType: asRateType.present ? asRateType.value : this.asRateType,
        tin: tin.present ? tin.value : this.tin,
      );
  @override
  String toString() {
    return (StringBuffer('CustomerTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value, ')
          ..write('asRateType: $asRateType, ')
          ..write('tin: $tin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value, asRateType, tin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value &&
          other.asRateType == this.asRateType &&
          other.tin == this.tin);
}

class CustomerTableCompanion extends UpdateCompanion<CustomerTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  final Value<String?> asRateType;
  final Value<String?> tin;
  const CustomerTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
    this.asRateType = const Value.absent(),
    this.tin = const Value.absent(),
  });
  CustomerTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
    this.asRateType = const Value.absent(),
    this.tin = const Value.absent(),
  });
  static Insertable<CustomerTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
    Expression<String>? asRateType,
    Expression<String>? tin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
      if (asRateType != null) 'as_rate_type': asRateType,
      if (tin != null) 'tin': tin,
    });
  }

  CustomerTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? label,
      Value<double?>? value,
      Value<String?>? asRateType,
      Value<String?>? tin}) {
    return CustomerTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
      asRateType: asRateType ?? this.asRateType,
      tin: tin ?? this.tin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (asRateType.present) {
      map['as_rate_type'] = Variable<String>(asRateType.value);
    }
    if (tin.present) {
      map['tin'] = Variable<String>(tin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value, ')
          ..write('asRateType: $asRateType, ')
          ..write('tin: $tin')
          ..write(')'))
        .toString();
  }
}

class $SalesmanTableTable extends SalesmanTable
    with TableInfo<$SalesmanTableTable, SalesmanTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesmanTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'salesman_table';
  @override
  String get actualTableName => 'salesman_table';
  @override
  VerificationContext validateIntegrity(Insertable<SalesmanTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SalesmanTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesmanTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $SalesmanTableTable createAlias(String alias) {
    return $SalesmanTableTable(attachedDatabase, alias);
  }
}

class SalesmanTableData extends DataClass
    implements Insertable<SalesmanTableData> {
  final int id;
  final String? label;
  final double? value;
  const SalesmanTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  SalesmanTableCompanion toCompanion(bool nullToAbsent) {
    return SalesmanTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory SalesmanTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SalesmanTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  SalesmanTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      SalesmanTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('SalesmanTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalesmanTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class SalesmanTableCompanion extends UpdateCompanion<SalesmanTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const SalesmanTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  SalesmanTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<SalesmanTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  SalesmanTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return SalesmanTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesmanTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $DistrictTableTable extends DistrictTable
    with TableInfo<$DistrictTableTable, DistrictTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DistrictTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'district_table';
  @override
  String get actualTableName => 'district_table';
  @override
  VerificationContext validateIntegrity(Insertable<DistrictTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DistrictTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DistrictTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $DistrictTableTable createAlias(String alias) {
    return $DistrictTableTable(attachedDatabase, alias);
  }
}

class DistrictTableData extends DataClass
    implements Insertable<DistrictTableData> {
  final int id;
  final String? label;
  final double? value;
  const DistrictTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  DistrictTableCompanion toCompanion(bool nullToAbsent) {
    return DistrictTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory DistrictTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DistrictTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  DistrictTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      DistrictTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('DistrictTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DistrictTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class DistrictTableCompanion extends UpdateCompanion<DistrictTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const DistrictTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  DistrictTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<DistrictTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  DistrictTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return DistrictTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DistrictTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $AreaTableTable extends AreaTable
    with TableInfo<$AreaTableTable, AreaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AreaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'area_table';
  @override
  String get actualTableName => 'area_table';
  @override
  VerificationContext validateIntegrity(Insertable<AreaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AreaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AreaTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $AreaTableTable createAlias(String alias) {
    return $AreaTableTable(attachedDatabase, alias);
  }
}

class AreaTableData extends DataClass implements Insertable<AreaTableData> {
  final int id;
  final String? label;
  final double? value;
  const AreaTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  AreaTableCompanion toCompanion(bool nullToAbsent) {
    return AreaTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory AreaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AreaTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  AreaTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      AreaTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('AreaTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AreaTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class AreaTableCompanion extends UpdateCompanion<AreaTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const AreaTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  AreaTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<AreaTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  AreaTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return AreaTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AreaTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $SalesTypeTableTable extends SalesTypeTable
    with TableInfo<$SalesTypeTableTable, SalesTypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'sales_type_table';
  @override
  String get actualTableName => 'sales_type_table';
  @override
  VerificationContext validateIntegrity(Insertable<SalesTypeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SalesTypeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesTypeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $SalesTypeTableTable createAlias(String alias) {
    return $SalesTypeTableTable(attachedDatabase, alias);
  }
}

class SalesTypeTableData extends DataClass
    implements Insertable<SalesTypeTableData> {
  final int id;
  final String? label;
  final double? value;
  const SalesTypeTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  SalesTypeTableCompanion toCompanion(bool nullToAbsent) {
    return SalesTypeTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory SalesTypeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SalesTypeTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  SalesTypeTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      SalesTypeTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('SalesTypeTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalesTypeTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class SalesTypeTableCompanion extends UpdateCompanion<SalesTypeTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const SalesTypeTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  SalesTypeTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<SalesTypeTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  SalesTypeTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return SalesTypeTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesTypeTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $CashTableTable extends CashTable
    with TableInfo<$CashTableTable, CashTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CashTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'cash_table';
  @override
  String get actualTableName => 'cash_table';
  @override
  VerificationContext validateIntegrity(Insertable<CashTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CashTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CashTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $CashTableTable createAlias(String alias) {
    return $CashTableTable(attachedDatabase, alias);
  }
}

class CashTableData extends DataClass implements Insertable<CashTableData> {
  final int id;
  final String? label;
  final double? value;
  const CashTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  CashTableCompanion toCompanion(bool nullToAbsent) {
    return CashTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory CashTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CashTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  CashTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      CashTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('CashTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CashTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class CashTableCompanion extends UpdateCompanion<CashTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const CashTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  CashTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<CashTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  CashTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return CashTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CashTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $BankTableTable extends BankTable
    with TableInfo<$BankTableTable, BankTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BankTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'bank_table';
  @override
  String get actualTableName => 'bank_table';
  @override
  VerificationContext validateIntegrity(Insertable<BankTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BankTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BankTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $BankTableTable createAlias(String alias) {
    return $BankTableTable(attachedDatabase, alias);
  }
}

class BankTableData extends DataClass implements Insertable<BankTableData> {
  final int id;
  final String? label;
  final double? value;
  const BankTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  BankTableCompanion toCompanion(bool nullToAbsent) {
    return BankTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory BankTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BankTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  BankTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      BankTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('BankTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BankTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class BankTableCompanion extends UpdateCompanion<BankTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const BankTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  BankTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<BankTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  BankTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return BankTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BankTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $CompanyTableTable extends CompanyTable
    with TableInfo<$CompanyTableTable, CompanyTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _comCodeMeta =
      const VerificationMeta('comCode');
  @override
  late final GeneratedColumn<String> comCode = GeneratedColumn<String>(
      'com_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _comIdMeta = const VerificationMeta('comId');
  @override
  late final GeneratedColumn<double> comId = GeneratedColumn<double>(
      'com_id', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _com_nameMeta =
      const VerificationMeta('com_name');
  @override
  late final GeneratedColumn<String> com_name = GeneratedColumn<String>(
      'com_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_add1Meta =
      const VerificationMeta('com_add1');
  @override
  late final GeneratedColumn<String> com_add1 = GeneratedColumn<String>(
      'com_add1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_add2Meta =
      const VerificationMeta('com_add2');
  @override
  late final GeneratedColumn<String> com_add2 = GeneratedColumn<String>(
      'com_add2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_add3Meta =
      const VerificationMeta('com_add3');
  @override
  late final GeneratedColumn<String> com_add3 = GeneratedColumn<String>(
      'com_add3', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_add4Meta =
      const VerificationMeta('com_add4');
  @override
  late final GeneratedColumn<String> com_add4 = GeneratedColumn<String>(
      'com_add4', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_add5Meta =
      const VerificationMeta('com_add5');
  @override
  late final GeneratedColumn<String> com_add5 = GeneratedColumn<String>(
      'com_add5', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_telephoneMeta =
      const VerificationMeta('com_telephone');
  @override
  late final GeneratedColumn<String> com_telephone = GeneratedColumn<String>(
      'com_telephone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_mobMeta =
      const VerificationMeta('com_mob');
  @override
  late final GeneratedColumn<String> com_mob = GeneratedColumn<String>(
      'com_mob', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_emailMeta =
      const VerificationMeta('com_email');
  @override
  late final GeneratedColumn<String> com_email = GeneratedColumn<String>(
      'com_email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_gstinMeta =
      const VerificationMeta('com_gstin');
  @override
  late final GeneratedColumn<String> com_gstin = GeneratedColumn<String>(
      'com_gstin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_sdateMeta =
      const VerificationMeta('com_sdate');
  @override
  late final GeneratedColumn<String> com_sdate = GeneratedColumn<String>(
      'com_sdate', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_edateMeta =
      const VerificationMeta('com_edate');
  @override
  late final GeneratedColumn<String> com_edate = GeneratedColumn<String>(
      'com_edate', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_stateMeta =
      const VerificationMeta('com_state');
  @override
  late final GeneratedColumn<String> com_state = GeneratedColumn<String>(
      'com_state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_state_codeMeta =
      const VerificationMeta('com_state_code');
  @override
  late final GeneratedColumn<String> com_state_code = GeneratedColumn<String>(
      'com_state_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_bankacMeta =
      const VerificationMeta('com_bankac');
  @override
  late final GeneratedColumn<String> com_bankac = GeneratedColumn<String>(
      'com_bankac', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_bank_accnoMeta =
      const VerificationMeta('com_bank_accno');
  @override
  late final GeneratedColumn<String> com_bank_accno = GeneratedColumn<String>(
      'com_bank_accno', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_bank_ifscMeta =
      const VerificationMeta('com_bank_ifsc');
  @override
  late final GeneratedColumn<String> com_bank_ifsc = GeneratedColumn<String>(
      'com_bank_ifsc', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_reg_dateMeta =
      const VerificationMeta('com_reg_date');
  @override
  late final GeneratedColumn<String> com_reg_date = GeneratedColumn<String>(
      'com_reg_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_appdataMeta =
      const VerificationMeta('com_appdata');
  @override
  late final GeneratedColumn<String> com_appdata = GeneratedColumn<String>(
      'com_appdata', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_next_dbMeta =
      const VerificationMeta('com_next_db');
  @override
  late final GeneratedColumn<String> com_next_db = GeneratedColumn<String>(
      'com_next_db', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_comtypeMeta =
      const VerificationMeta('com_comtype');
  @override
  late final GeneratedColumn<String> com_comtype = GeneratedColumn<String>(
      'com_comtype', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_serverMeta =
      const VerificationMeta('com_server');
  @override
  late final GeneratedColumn<String> com_server = GeneratedColumn<String>(
      'com_server', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_passMeta =
      const VerificationMeta('com_pass');
  @override
  late final GeneratedColumn<String> com_pass = GeneratedColumn<String>(
      'com_pass', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_userMeta =
      const VerificationMeta('com_user');
  @override
  late final GeneratedColumn<String> com_user = GeneratedColumn<String>(
      'com_user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_product_prefixMeta =
      const VerificationMeta('com_product_prefix');
  @override
  late final GeneratedColumn<String> com_product_prefix =
      GeneratedColumn<String>('com_product_prefix', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_essl_pathMeta =
      const VerificationMeta('com_essl_path');
  @override
  late final GeneratedColumn<String> com_essl_path = GeneratedColumn<String>(
      'com_essl_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_lantimeTextColumnMeta =
      const VerificationMeta('com_lantimeTextColumn');
  @override
  late final GeneratedColumn<String> com_lantimeTextColumn =
      GeneratedColumn<String>('com_lantime_text_column', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_essl_min_halfday_hrsTextColumnMeta =
      const VerificationMeta('com_essl_min_halfday_hrsTextColumn');
  @override
  late final GeneratedColumn<double> com_essl_min_halfday_hrsTextColumn =
      GeneratedColumn<double>(
          'com_essl_min_halfday_hrs_text_column', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _com_essl_min_fullday_hrsTextColumnMeta =
      const VerificationMeta('com_essl_min_fullday_hrsTextColumn');
  @override
  late final GeneratedColumn<double> com_essl_min_fullday_hrsTextColumn =
      GeneratedColumn<double>(
          'com_essl_min_fullday_hrs_text_column', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _com_countryMeta =
      const VerificationMeta('com_country');
  @override
  late final GeneratedColumn<String> com_country = GeneratedColumn<String>(
      'com_country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_country_codeMeta =
      const VerificationMeta('com_country_code');
  @override
  late final GeneratedColumn<String> com_country_code = GeneratedColumn<String>(
      'com_country_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_currency_codeMeta =
      const VerificationMeta('com_currency_code');
  @override
  late final GeneratedColumn<String> com_currency_code =
      GeneratedColumn<String>('com_currency_code', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_currency_maxMeta =
      const VerificationMeta('com_currency_max');
  @override
  late final GeneratedColumn<String> com_currency_max = GeneratedColumn<String>(
      'com_currency_max', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_currency_minMeta =
      const VerificationMeta('com_currency_min');
  @override
  late final GeneratedColumn<String> com_currency_min = GeneratedColumn<String>(
      'com_currency_min', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_locationMeta =
      const VerificationMeta('com_location');
  @override
  late final GeneratedColumn<String> com_location = GeneratedColumn<String>(
      'com_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_trade_nameMeta =
      const VerificationMeta('com_trade_name');
  @override
  late final GeneratedColumn<String> com_trade_name = GeneratedColumn<String>(
      'com_trade_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_pincodeTextColumnMeta =
      const VerificationMeta('com_pincodeTextColumn');
  @override
  late final GeneratedColumn<int> com_pincodeTextColumn = GeneratedColumn<int>(
      'com_pincode_text_column', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _com_yd_statusTextColumnMeta =
      const VerificationMeta('com_yd_statusTextColumn');
  @override
  late final GeneratedColumn<int> com_yd_statusTextColumn =
      GeneratedColumn<int>('com_yd_status_text_column', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _com_yd_db_nameMeta =
      const VerificationMeta('com_yd_db_name');
  @override
  late final GeneratedColumn<String> com_yd_db_name = GeneratedColumn<String>(
      'com_yd_db_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_logoMeta =
      const VerificationMeta('com_logo');
  @override
  late final GeneratedColumn<String> com_logo = GeneratedColumn<String>(
      'com_logo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_ar_nameMeta =
      const VerificationMeta('com_ar_name');
  @override
  late final GeneratedColumn<String> com_ar_name = GeneratedColumn<String>(
      'com_ar_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_ar_add1Meta =
      const VerificationMeta('com_ar_add1');
  @override
  late final GeneratedColumn<String> com_ar_add1 = GeneratedColumn<String>(
      'com_ar_add1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_ar_add2Meta =
      const VerificationMeta('com_ar_add2');
  @override
  late final GeneratedColumn<String> com_ar_add2 = GeneratedColumn<String>(
      'com_ar_add2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_ar_add3Meta =
      const VerificationMeta('com_ar_add3');
  @override
  late final GeneratedColumn<String> com_ar_add3 = GeneratedColumn<String>(
      'com_ar_add3', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_ar_mobMeta =
      const VerificationMeta('com_ar_mob');
  @override
  late final GeneratedColumn<String> com_ar_mob = GeneratedColumn<String>(
      'com_ar_mob', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _com_ar_vatMeta =
      const VerificationMeta('com_ar_vat');
  @override
  late final GeneratedColumn<String> com_ar_vat = GeneratedColumn<String>(
      'com_ar_vat', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        comCode,
        comId,
        com_name,
        com_add1,
        com_add2,
        com_add3,
        com_add4,
        com_add5,
        com_telephone,
        com_mob,
        com_email,
        com_gstin,
        com_sdate,
        com_edate,
        com_state,
        com_state_code,
        com_bankac,
        com_bank_accno,
        com_bank_ifsc,
        com_reg_date,
        com_appdata,
        com_next_db,
        com_comtype,
        com_server,
        com_pass,
        com_user,
        com_product_prefix,
        com_essl_path,
        com_lantimeTextColumn,
        com_essl_min_halfday_hrsTextColumn,
        com_essl_min_fullday_hrsTextColumn,
        com_country,
        com_country_code,
        com_currency_code,
        com_currency_max,
        com_currency_min,
        com_location,
        com_trade_name,
        com_pincodeTextColumn,
        com_yd_statusTextColumn,
        com_yd_db_name,
        com_logo,
        com_ar_name,
        com_ar_add1,
        com_ar_add2,
        com_ar_add3,
        com_ar_mob,
        com_ar_vat
      ];
  @override
  String get aliasedName => _alias ?? 'company_table';
  @override
  String get actualTableName => 'company_table';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('com_code')) {
      context.handle(_comCodeMeta,
          comCode.isAcceptableOrUnknown(data['com_code']!, _comCodeMeta));
    }
    if (data.containsKey('com_id')) {
      context.handle(
          _comIdMeta, comId.isAcceptableOrUnknown(data['com_id']!, _comIdMeta));
    }
    if (data.containsKey('com_name')) {
      context.handle(_com_nameMeta,
          com_name.isAcceptableOrUnknown(data['com_name']!, _com_nameMeta));
    }
    if (data.containsKey('com_add1')) {
      context.handle(_com_add1Meta,
          com_add1.isAcceptableOrUnknown(data['com_add1']!, _com_add1Meta));
    }
    if (data.containsKey('com_add2')) {
      context.handle(_com_add2Meta,
          com_add2.isAcceptableOrUnknown(data['com_add2']!, _com_add2Meta));
    }
    if (data.containsKey('com_add3')) {
      context.handle(_com_add3Meta,
          com_add3.isAcceptableOrUnknown(data['com_add3']!, _com_add3Meta));
    }
    if (data.containsKey('com_add4')) {
      context.handle(_com_add4Meta,
          com_add4.isAcceptableOrUnknown(data['com_add4']!, _com_add4Meta));
    }
    if (data.containsKey('com_add5')) {
      context.handle(_com_add5Meta,
          com_add5.isAcceptableOrUnknown(data['com_add5']!, _com_add5Meta));
    }
    if (data.containsKey('com_telephone')) {
      context.handle(
          _com_telephoneMeta,
          com_telephone.isAcceptableOrUnknown(
              data['com_telephone']!, _com_telephoneMeta));
    }
    if (data.containsKey('com_mob')) {
      context.handle(_com_mobMeta,
          com_mob.isAcceptableOrUnknown(data['com_mob']!, _com_mobMeta));
    }
    if (data.containsKey('com_email')) {
      context.handle(_com_emailMeta,
          com_email.isAcceptableOrUnknown(data['com_email']!, _com_emailMeta));
    }
    if (data.containsKey('com_gstin')) {
      context.handle(_com_gstinMeta,
          com_gstin.isAcceptableOrUnknown(data['com_gstin']!, _com_gstinMeta));
    }
    if (data.containsKey('com_sdate')) {
      context.handle(_com_sdateMeta,
          com_sdate.isAcceptableOrUnknown(data['com_sdate']!, _com_sdateMeta));
    }
    if (data.containsKey('com_edate')) {
      context.handle(_com_edateMeta,
          com_edate.isAcceptableOrUnknown(data['com_edate']!, _com_edateMeta));
    }
    if (data.containsKey('com_state')) {
      context.handle(_com_stateMeta,
          com_state.isAcceptableOrUnknown(data['com_state']!, _com_stateMeta));
    }
    if (data.containsKey('com_state_code')) {
      context.handle(
          _com_state_codeMeta,
          com_state_code.isAcceptableOrUnknown(
              data['com_state_code']!, _com_state_codeMeta));
    }
    if (data.containsKey('com_bankac')) {
      context.handle(
          _com_bankacMeta,
          com_bankac.isAcceptableOrUnknown(
              data['com_bankac']!, _com_bankacMeta));
    }
    if (data.containsKey('com_bank_accno')) {
      context.handle(
          _com_bank_accnoMeta,
          com_bank_accno.isAcceptableOrUnknown(
              data['com_bank_accno']!, _com_bank_accnoMeta));
    }
    if (data.containsKey('com_bank_ifsc')) {
      context.handle(
          _com_bank_ifscMeta,
          com_bank_ifsc.isAcceptableOrUnknown(
              data['com_bank_ifsc']!, _com_bank_ifscMeta));
    }
    if (data.containsKey('com_reg_date')) {
      context.handle(
          _com_reg_dateMeta,
          com_reg_date.isAcceptableOrUnknown(
              data['com_reg_date']!, _com_reg_dateMeta));
    }
    if (data.containsKey('com_appdata')) {
      context.handle(
          _com_appdataMeta,
          com_appdata.isAcceptableOrUnknown(
              data['com_appdata']!, _com_appdataMeta));
    }
    if (data.containsKey('com_next_db')) {
      context.handle(
          _com_next_dbMeta,
          com_next_db.isAcceptableOrUnknown(
              data['com_next_db']!, _com_next_dbMeta));
    }
    if (data.containsKey('com_comtype')) {
      context.handle(
          _com_comtypeMeta,
          com_comtype.isAcceptableOrUnknown(
              data['com_comtype']!, _com_comtypeMeta));
    }
    if (data.containsKey('com_server')) {
      context.handle(
          _com_serverMeta,
          com_server.isAcceptableOrUnknown(
              data['com_server']!, _com_serverMeta));
    }
    if (data.containsKey('com_pass')) {
      context.handle(_com_passMeta,
          com_pass.isAcceptableOrUnknown(data['com_pass']!, _com_passMeta));
    }
    if (data.containsKey('com_user')) {
      context.handle(_com_userMeta,
          com_user.isAcceptableOrUnknown(data['com_user']!, _com_userMeta));
    }
    if (data.containsKey('com_product_prefix')) {
      context.handle(
          _com_product_prefixMeta,
          com_product_prefix.isAcceptableOrUnknown(
              data['com_product_prefix']!, _com_product_prefixMeta));
    }
    if (data.containsKey('com_essl_path')) {
      context.handle(
          _com_essl_pathMeta,
          com_essl_path.isAcceptableOrUnknown(
              data['com_essl_path']!, _com_essl_pathMeta));
    }
    if (data.containsKey('com_lantime_text_column')) {
      context.handle(
          _com_lantimeTextColumnMeta,
          com_lantimeTextColumn.isAcceptableOrUnknown(
              data['com_lantime_text_column']!, _com_lantimeTextColumnMeta));
    }
    if (data.containsKey('com_essl_min_halfday_hrs_text_column')) {
      context.handle(
          _com_essl_min_halfday_hrsTextColumnMeta,
          com_essl_min_halfday_hrsTextColumn.isAcceptableOrUnknown(
              data['com_essl_min_halfday_hrs_text_column']!,
              _com_essl_min_halfday_hrsTextColumnMeta));
    }
    if (data.containsKey('com_essl_min_fullday_hrs_text_column')) {
      context.handle(
          _com_essl_min_fullday_hrsTextColumnMeta,
          com_essl_min_fullday_hrsTextColumn.isAcceptableOrUnknown(
              data['com_essl_min_fullday_hrs_text_column']!,
              _com_essl_min_fullday_hrsTextColumnMeta));
    }
    if (data.containsKey('com_country')) {
      context.handle(
          _com_countryMeta,
          com_country.isAcceptableOrUnknown(
              data['com_country']!, _com_countryMeta));
    }
    if (data.containsKey('com_country_code')) {
      context.handle(
          _com_country_codeMeta,
          com_country_code.isAcceptableOrUnknown(
              data['com_country_code']!, _com_country_codeMeta));
    }
    if (data.containsKey('com_currency_code')) {
      context.handle(
          _com_currency_codeMeta,
          com_currency_code.isAcceptableOrUnknown(
              data['com_currency_code']!, _com_currency_codeMeta));
    }
    if (data.containsKey('com_currency_max')) {
      context.handle(
          _com_currency_maxMeta,
          com_currency_max.isAcceptableOrUnknown(
              data['com_currency_max']!, _com_currency_maxMeta));
    }
    if (data.containsKey('com_currency_min')) {
      context.handle(
          _com_currency_minMeta,
          com_currency_min.isAcceptableOrUnknown(
              data['com_currency_min']!, _com_currency_minMeta));
    }
    if (data.containsKey('com_location')) {
      context.handle(
          _com_locationMeta,
          com_location.isAcceptableOrUnknown(
              data['com_location']!, _com_locationMeta));
    }
    if (data.containsKey('com_trade_name')) {
      context.handle(
          _com_trade_nameMeta,
          com_trade_name.isAcceptableOrUnknown(
              data['com_trade_name']!, _com_trade_nameMeta));
    }
    if (data.containsKey('com_pincode_text_column')) {
      context.handle(
          _com_pincodeTextColumnMeta,
          com_pincodeTextColumn.isAcceptableOrUnknown(
              data['com_pincode_text_column']!, _com_pincodeTextColumnMeta));
    }
    if (data.containsKey('com_yd_status_text_column')) {
      context.handle(
          _com_yd_statusTextColumnMeta,
          com_yd_statusTextColumn.isAcceptableOrUnknown(
              data['com_yd_status_text_column']!,
              _com_yd_statusTextColumnMeta));
    }
    if (data.containsKey('com_yd_db_name')) {
      context.handle(
          _com_yd_db_nameMeta,
          com_yd_db_name.isAcceptableOrUnknown(
              data['com_yd_db_name']!, _com_yd_db_nameMeta));
    }
    if (data.containsKey('com_logo')) {
      context.handle(_com_logoMeta,
          com_logo.isAcceptableOrUnknown(data['com_logo']!, _com_logoMeta));
    }
    if (data.containsKey('com_ar_name')) {
      context.handle(
          _com_ar_nameMeta,
          com_ar_name.isAcceptableOrUnknown(
              data['com_ar_name']!, _com_ar_nameMeta));
    }
    if (data.containsKey('com_ar_add1')) {
      context.handle(
          _com_ar_add1Meta,
          com_ar_add1.isAcceptableOrUnknown(
              data['com_ar_add1']!, _com_ar_add1Meta));
    }
    if (data.containsKey('com_ar_add2')) {
      context.handle(
          _com_ar_add2Meta,
          com_ar_add2.isAcceptableOrUnknown(
              data['com_ar_add2']!, _com_ar_add2Meta));
    }
    if (data.containsKey('com_ar_add3')) {
      context.handle(
          _com_ar_add3Meta,
          com_ar_add3.isAcceptableOrUnknown(
              data['com_ar_add3']!, _com_ar_add3Meta));
    }
    if (data.containsKey('com_ar_mob')) {
      context.handle(
          _com_ar_mobMeta,
          com_ar_mob.isAcceptableOrUnknown(
              data['com_ar_mob']!, _com_ar_mobMeta));
    }
    if (data.containsKey('com_ar_vat')) {
      context.handle(
          _com_ar_vatMeta,
          com_ar_vat.isAcceptableOrUnknown(
              data['com_ar_vat']!, _com_ar_vatMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompanyTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      comCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_code']),
      comId: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}com_id']),
      com_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_name']),
      com_add1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_add1']),
      com_add2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_add2']),
      com_add3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_add3']),
      com_add4: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_add4']),
      com_add5: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_add5']),
      com_telephone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_telephone']),
      com_mob: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_mob']),
      com_email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_email']),
      com_gstin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_gstin']),
      com_sdate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_sdate']),
      com_edate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_edate']),
      com_state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_state']),
      com_state_code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_state_code']),
      com_bankac: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_bankac']),
      com_bank_accno: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_bank_accno']),
      com_bank_ifsc: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_bank_ifsc']),
      com_reg_date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_reg_date']),
      com_appdata: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_appdata']),
      com_next_db: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_next_db']),
      com_comtype: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_comtype']),
      com_server: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_server']),
      com_pass: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_pass']),
      com_user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_user']),
      com_product_prefix: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}com_product_prefix']),
      com_essl_path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_essl_path']),
      com_lantimeTextColumn: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}com_lantime_text_column']),
      com_essl_min_halfday_hrsTextColumn: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}com_essl_min_halfday_hrs_text_column']),
      com_essl_min_fullday_hrsTextColumn: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}com_essl_min_fullday_hrs_text_column']),
      com_country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_country']),
      com_country_code: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}com_country_code']),
      com_currency_code: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}com_currency_code']),
      com_currency_max: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}com_currency_max']),
      com_currency_min: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}com_currency_min']),
      com_location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_location']),
      com_trade_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_trade_name']),
      com_pincodeTextColumn: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}com_pincode_text_column']),
      com_yd_statusTextColumn: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}com_yd_status_text_column']),
      com_yd_db_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_yd_db_name']),
      com_logo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_logo']),
      com_ar_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_ar_name']),
      com_ar_add1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_ar_add1']),
      com_ar_add2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_ar_add2']),
      com_ar_add3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_ar_add3']),
      com_ar_mob: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_ar_mob']),
      com_ar_vat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}com_ar_vat']),
    );
  }

  @override
  $CompanyTableTable createAlias(String alias) {
    return $CompanyTableTable(attachedDatabase, alias);
  }
}

class CompanyTableData extends DataClass
    implements Insertable<CompanyTableData> {
  final int id;
  final String? comCode;
  final double? comId;
  final String? com_name;
  final String? com_add1;
  final String? com_add2;
  final String? com_add3;
  final String? com_add4;
  final String? com_add5;
  final String? com_telephone;
  final String? com_mob;
  final String? com_email;
  final String? com_gstin;
  final String? com_sdate;
  final String? com_edate;
  final String? com_state;
  final String? com_state_code;
  final String? com_bankac;
  final String? com_bank_accno;
  final String? com_bank_ifsc;
  final String? com_reg_date;
  final String? com_appdata;
  final String? com_next_db;
  final String? com_comtype;
  final String? com_server;
  final String? com_pass;
  final String? com_user;
  final String? com_product_prefix;
  final String? com_essl_path;
  final String? com_lantimeTextColumn;
  final double? com_essl_min_halfday_hrsTextColumn;
  final double? com_essl_min_fullday_hrsTextColumn;
  final String? com_country;
  final String? com_country_code;
  final String? com_currency_code;
  final String? com_currency_max;
  final String? com_currency_min;
  final String? com_location;
  final String? com_trade_name;
  final int? com_pincodeTextColumn;
  final int? com_yd_statusTextColumn;
  final String? com_yd_db_name;
  final String? com_logo;
  final String? com_ar_name;
  final String? com_ar_add1;
  final String? com_ar_add2;
  final String? com_ar_add3;
  final String? com_ar_mob;
  final String? com_ar_vat;
  const CompanyTableData(
      {required this.id,
      this.comCode,
      this.comId,
      this.com_name,
      this.com_add1,
      this.com_add2,
      this.com_add3,
      this.com_add4,
      this.com_add5,
      this.com_telephone,
      this.com_mob,
      this.com_email,
      this.com_gstin,
      this.com_sdate,
      this.com_edate,
      this.com_state,
      this.com_state_code,
      this.com_bankac,
      this.com_bank_accno,
      this.com_bank_ifsc,
      this.com_reg_date,
      this.com_appdata,
      this.com_next_db,
      this.com_comtype,
      this.com_server,
      this.com_pass,
      this.com_user,
      this.com_product_prefix,
      this.com_essl_path,
      this.com_lantimeTextColumn,
      this.com_essl_min_halfday_hrsTextColumn,
      this.com_essl_min_fullday_hrsTextColumn,
      this.com_country,
      this.com_country_code,
      this.com_currency_code,
      this.com_currency_max,
      this.com_currency_min,
      this.com_location,
      this.com_trade_name,
      this.com_pincodeTextColumn,
      this.com_yd_statusTextColumn,
      this.com_yd_db_name,
      this.com_logo,
      this.com_ar_name,
      this.com_ar_add1,
      this.com_ar_add2,
      this.com_ar_add3,
      this.com_ar_mob,
      this.com_ar_vat});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || comCode != null) {
      map['com_code'] = Variable<String>(comCode);
    }
    if (!nullToAbsent || comId != null) {
      map['com_id'] = Variable<double>(comId);
    }
    if (!nullToAbsent || com_name != null) {
      map['com_name'] = Variable<String>(com_name);
    }
    if (!nullToAbsent || com_add1 != null) {
      map['com_add1'] = Variable<String>(com_add1);
    }
    if (!nullToAbsent || com_add2 != null) {
      map['com_add2'] = Variable<String>(com_add2);
    }
    if (!nullToAbsent || com_add3 != null) {
      map['com_add3'] = Variable<String>(com_add3);
    }
    if (!nullToAbsent || com_add4 != null) {
      map['com_add4'] = Variable<String>(com_add4);
    }
    if (!nullToAbsent || com_add5 != null) {
      map['com_add5'] = Variable<String>(com_add5);
    }
    if (!nullToAbsent || com_telephone != null) {
      map['com_telephone'] = Variable<String>(com_telephone);
    }
    if (!nullToAbsent || com_mob != null) {
      map['com_mob'] = Variable<String>(com_mob);
    }
    if (!nullToAbsent || com_email != null) {
      map['com_email'] = Variable<String>(com_email);
    }
    if (!nullToAbsent || com_gstin != null) {
      map['com_gstin'] = Variable<String>(com_gstin);
    }
    if (!nullToAbsent || com_sdate != null) {
      map['com_sdate'] = Variable<String>(com_sdate);
    }
    if (!nullToAbsent || com_edate != null) {
      map['com_edate'] = Variable<String>(com_edate);
    }
    if (!nullToAbsent || com_state != null) {
      map['com_state'] = Variable<String>(com_state);
    }
    if (!nullToAbsent || com_state_code != null) {
      map['com_state_code'] = Variable<String>(com_state_code);
    }
    if (!nullToAbsent || com_bankac != null) {
      map['com_bankac'] = Variable<String>(com_bankac);
    }
    if (!nullToAbsent || com_bank_accno != null) {
      map['com_bank_accno'] = Variable<String>(com_bank_accno);
    }
    if (!nullToAbsent || com_bank_ifsc != null) {
      map['com_bank_ifsc'] = Variable<String>(com_bank_ifsc);
    }
    if (!nullToAbsent || com_reg_date != null) {
      map['com_reg_date'] = Variable<String>(com_reg_date);
    }
    if (!nullToAbsent || com_appdata != null) {
      map['com_appdata'] = Variable<String>(com_appdata);
    }
    if (!nullToAbsent || com_next_db != null) {
      map['com_next_db'] = Variable<String>(com_next_db);
    }
    if (!nullToAbsent || com_comtype != null) {
      map['com_comtype'] = Variable<String>(com_comtype);
    }
    if (!nullToAbsent || com_server != null) {
      map['com_server'] = Variable<String>(com_server);
    }
    if (!nullToAbsent || com_pass != null) {
      map['com_pass'] = Variable<String>(com_pass);
    }
    if (!nullToAbsent || com_user != null) {
      map['com_user'] = Variable<String>(com_user);
    }
    if (!nullToAbsent || com_product_prefix != null) {
      map['com_product_prefix'] = Variable<String>(com_product_prefix);
    }
    if (!nullToAbsent || com_essl_path != null) {
      map['com_essl_path'] = Variable<String>(com_essl_path);
    }
    if (!nullToAbsent || com_lantimeTextColumn != null) {
      map['com_lantime_text_column'] = Variable<String>(com_lantimeTextColumn);
    }
    if (!nullToAbsent || com_essl_min_halfday_hrsTextColumn != null) {
      map['com_essl_min_halfday_hrs_text_column'] =
          Variable<double>(com_essl_min_halfday_hrsTextColumn);
    }
    if (!nullToAbsent || com_essl_min_fullday_hrsTextColumn != null) {
      map['com_essl_min_fullday_hrs_text_column'] =
          Variable<double>(com_essl_min_fullday_hrsTextColumn);
    }
    if (!nullToAbsent || com_country != null) {
      map['com_country'] = Variable<String>(com_country);
    }
    if (!nullToAbsent || com_country_code != null) {
      map['com_country_code'] = Variable<String>(com_country_code);
    }
    if (!nullToAbsent || com_currency_code != null) {
      map['com_currency_code'] = Variable<String>(com_currency_code);
    }
    if (!nullToAbsent || com_currency_max != null) {
      map['com_currency_max'] = Variable<String>(com_currency_max);
    }
    if (!nullToAbsent || com_currency_min != null) {
      map['com_currency_min'] = Variable<String>(com_currency_min);
    }
    if (!nullToAbsent || com_location != null) {
      map['com_location'] = Variable<String>(com_location);
    }
    if (!nullToAbsent || com_trade_name != null) {
      map['com_trade_name'] = Variable<String>(com_trade_name);
    }
    if (!nullToAbsent || com_pincodeTextColumn != null) {
      map['com_pincode_text_column'] = Variable<int>(com_pincodeTextColumn);
    }
    if (!nullToAbsent || com_yd_statusTextColumn != null) {
      map['com_yd_status_text_column'] = Variable<int>(com_yd_statusTextColumn);
    }
    if (!nullToAbsent || com_yd_db_name != null) {
      map['com_yd_db_name'] = Variable<String>(com_yd_db_name);
    }
    if (!nullToAbsent || com_logo != null) {
      map['com_logo'] = Variable<String>(com_logo);
    }
    if (!nullToAbsent || com_ar_name != null) {
      map['com_ar_name'] = Variable<String>(com_ar_name);
    }
    if (!nullToAbsent || com_ar_add1 != null) {
      map['com_ar_add1'] = Variable<String>(com_ar_add1);
    }
    if (!nullToAbsent || com_ar_add2 != null) {
      map['com_ar_add2'] = Variable<String>(com_ar_add2);
    }
    if (!nullToAbsent || com_ar_add3 != null) {
      map['com_ar_add3'] = Variable<String>(com_ar_add3);
    }
    if (!nullToAbsent || com_ar_mob != null) {
      map['com_ar_mob'] = Variable<String>(com_ar_mob);
    }
    if (!nullToAbsent || com_ar_vat != null) {
      map['com_ar_vat'] = Variable<String>(com_ar_vat);
    }
    return map;
  }

  CompanyTableCompanion toCompanion(bool nullToAbsent) {
    return CompanyTableCompanion(
      id: Value(id),
      comCode: comCode == null && nullToAbsent
          ? const Value.absent()
          : Value(comCode),
      comId:
          comId == null && nullToAbsent ? const Value.absent() : Value(comId),
      com_name: com_name == null && nullToAbsent
          ? const Value.absent()
          : Value(com_name),
      com_add1: com_add1 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_add1),
      com_add2: com_add2 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_add2),
      com_add3: com_add3 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_add3),
      com_add4: com_add4 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_add4),
      com_add5: com_add5 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_add5),
      com_telephone: com_telephone == null && nullToAbsent
          ? const Value.absent()
          : Value(com_telephone),
      com_mob: com_mob == null && nullToAbsent
          ? const Value.absent()
          : Value(com_mob),
      com_email: com_email == null && nullToAbsent
          ? const Value.absent()
          : Value(com_email),
      com_gstin: com_gstin == null && nullToAbsent
          ? const Value.absent()
          : Value(com_gstin),
      com_sdate: com_sdate == null && nullToAbsent
          ? const Value.absent()
          : Value(com_sdate),
      com_edate: com_edate == null && nullToAbsent
          ? const Value.absent()
          : Value(com_edate),
      com_state: com_state == null && nullToAbsent
          ? const Value.absent()
          : Value(com_state),
      com_state_code: com_state_code == null && nullToAbsent
          ? const Value.absent()
          : Value(com_state_code),
      com_bankac: com_bankac == null && nullToAbsent
          ? const Value.absent()
          : Value(com_bankac),
      com_bank_accno: com_bank_accno == null && nullToAbsent
          ? const Value.absent()
          : Value(com_bank_accno),
      com_bank_ifsc: com_bank_ifsc == null && nullToAbsent
          ? const Value.absent()
          : Value(com_bank_ifsc),
      com_reg_date: com_reg_date == null && nullToAbsent
          ? const Value.absent()
          : Value(com_reg_date),
      com_appdata: com_appdata == null && nullToAbsent
          ? const Value.absent()
          : Value(com_appdata),
      com_next_db: com_next_db == null && nullToAbsent
          ? const Value.absent()
          : Value(com_next_db),
      com_comtype: com_comtype == null && nullToAbsent
          ? const Value.absent()
          : Value(com_comtype),
      com_server: com_server == null && nullToAbsent
          ? const Value.absent()
          : Value(com_server),
      com_pass: com_pass == null && nullToAbsent
          ? const Value.absent()
          : Value(com_pass),
      com_user: com_user == null && nullToAbsent
          ? const Value.absent()
          : Value(com_user),
      com_product_prefix: com_product_prefix == null && nullToAbsent
          ? const Value.absent()
          : Value(com_product_prefix),
      com_essl_path: com_essl_path == null && nullToAbsent
          ? const Value.absent()
          : Value(com_essl_path),
      com_lantimeTextColumn: com_lantimeTextColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(com_lantimeTextColumn),
      com_essl_min_halfday_hrsTextColumn:
          com_essl_min_halfday_hrsTextColumn == null && nullToAbsent
              ? const Value.absent()
              : Value(com_essl_min_halfday_hrsTextColumn),
      com_essl_min_fullday_hrsTextColumn:
          com_essl_min_fullday_hrsTextColumn == null && nullToAbsent
              ? const Value.absent()
              : Value(com_essl_min_fullday_hrsTextColumn),
      com_country: com_country == null && nullToAbsent
          ? const Value.absent()
          : Value(com_country),
      com_country_code: com_country_code == null && nullToAbsent
          ? const Value.absent()
          : Value(com_country_code),
      com_currency_code: com_currency_code == null && nullToAbsent
          ? const Value.absent()
          : Value(com_currency_code),
      com_currency_max: com_currency_max == null && nullToAbsent
          ? const Value.absent()
          : Value(com_currency_max),
      com_currency_min: com_currency_min == null && nullToAbsent
          ? const Value.absent()
          : Value(com_currency_min),
      com_location: com_location == null && nullToAbsent
          ? const Value.absent()
          : Value(com_location),
      com_trade_name: com_trade_name == null && nullToAbsent
          ? const Value.absent()
          : Value(com_trade_name),
      com_pincodeTextColumn: com_pincodeTextColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(com_pincodeTextColumn),
      com_yd_statusTextColumn: com_yd_statusTextColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(com_yd_statusTextColumn),
      com_yd_db_name: com_yd_db_name == null && nullToAbsent
          ? const Value.absent()
          : Value(com_yd_db_name),
      com_logo: com_logo == null && nullToAbsent
          ? const Value.absent()
          : Value(com_logo),
      com_ar_name: com_ar_name == null && nullToAbsent
          ? const Value.absent()
          : Value(com_ar_name),
      com_ar_add1: com_ar_add1 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_ar_add1),
      com_ar_add2: com_ar_add2 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_ar_add2),
      com_ar_add3: com_ar_add3 == null && nullToAbsent
          ? const Value.absent()
          : Value(com_ar_add3),
      com_ar_mob: com_ar_mob == null && nullToAbsent
          ? const Value.absent()
          : Value(com_ar_mob),
      com_ar_vat: com_ar_vat == null && nullToAbsent
          ? const Value.absent()
          : Value(com_ar_vat),
    );
  }

  factory CompanyTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyTableData(
      id: serializer.fromJson<int>(json['id']),
      comCode: serializer.fromJson<String?>(json['comCode']),
      comId: serializer.fromJson<double?>(json['comId']),
      com_name: serializer.fromJson<String?>(json['com_name']),
      com_add1: serializer.fromJson<String?>(json['com_add1']),
      com_add2: serializer.fromJson<String?>(json['com_add2']),
      com_add3: serializer.fromJson<String?>(json['com_add3']),
      com_add4: serializer.fromJson<String?>(json['com_add4']),
      com_add5: serializer.fromJson<String?>(json['com_add5']),
      com_telephone: serializer.fromJson<String?>(json['com_telephone']),
      com_mob: serializer.fromJson<String?>(json['com_mob']),
      com_email: serializer.fromJson<String?>(json['com_email']),
      com_gstin: serializer.fromJson<String?>(json['com_gstin']),
      com_sdate: serializer.fromJson<String?>(json['com_sdate']),
      com_edate: serializer.fromJson<String?>(json['com_edate']),
      com_state: serializer.fromJson<String?>(json['com_state']),
      com_state_code: serializer.fromJson<String?>(json['com_state_code']),
      com_bankac: serializer.fromJson<String?>(json['com_bankac']),
      com_bank_accno: serializer.fromJson<String?>(json['com_bank_accno']),
      com_bank_ifsc: serializer.fromJson<String?>(json['com_bank_ifsc']),
      com_reg_date: serializer.fromJson<String?>(json['com_reg_date']),
      com_appdata: serializer.fromJson<String?>(json['com_appdata']),
      com_next_db: serializer.fromJson<String?>(json['com_next_db']),
      com_comtype: serializer.fromJson<String?>(json['com_comtype']),
      com_server: serializer.fromJson<String?>(json['com_server']),
      com_pass: serializer.fromJson<String?>(json['com_pass']),
      com_user: serializer.fromJson<String?>(json['com_user']),
      com_product_prefix:
          serializer.fromJson<String?>(json['com_product_prefix']),
      com_essl_path: serializer.fromJson<String?>(json['com_essl_path']),
      com_lantimeTextColumn:
          serializer.fromJson<String?>(json['com_lantimeTextColumn']),
      com_essl_min_halfday_hrsTextColumn: serializer
          .fromJson<double?>(json['com_essl_min_halfday_hrsTextColumn']),
      com_essl_min_fullday_hrsTextColumn: serializer
          .fromJson<double?>(json['com_essl_min_fullday_hrsTextColumn']),
      com_country: serializer.fromJson<String?>(json['com_country']),
      com_country_code: serializer.fromJson<String?>(json['com_country_code']),
      com_currency_code:
          serializer.fromJson<String?>(json['com_currency_code']),
      com_currency_max: serializer.fromJson<String?>(json['com_currency_max']),
      com_currency_min: serializer.fromJson<String?>(json['com_currency_min']),
      com_location: serializer.fromJson<String?>(json['com_location']),
      com_trade_name: serializer.fromJson<String?>(json['com_trade_name']),
      com_pincodeTextColumn:
          serializer.fromJson<int?>(json['com_pincodeTextColumn']),
      com_yd_statusTextColumn:
          serializer.fromJson<int?>(json['com_yd_statusTextColumn']),
      com_yd_db_name: serializer.fromJson<String?>(json['com_yd_db_name']),
      com_logo: serializer.fromJson<String?>(json['com_logo']),
      com_ar_name: serializer.fromJson<String?>(json['com_ar_name']),
      com_ar_add1: serializer.fromJson<String?>(json['com_ar_add1']),
      com_ar_add2: serializer.fromJson<String?>(json['com_ar_add2']),
      com_ar_add3: serializer.fromJson<String?>(json['com_ar_add3']),
      com_ar_mob: serializer.fromJson<String?>(json['com_ar_mob']),
      com_ar_vat: serializer.fromJson<String?>(json['com_ar_vat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'comCode': serializer.toJson<String?>(comCode),
      'comId': serializer.toJson<double?>(comId),
      'com_name': serializer.toJson<String?>(com_name),
      'com_add1': serializer.toJson<String?>(com_add1),
      'com_add2': serializer.toJson<String?>(com_add2),
      'com_add3': serializer.toJson<String?>(com_add3),
      'com_add4': serializer.toJson<String?>(com_add4),
      'com_add5': serializer.toJson<String?>(com_add5),
      'com_telephone': serializer.toJson<String?>(com_telephone),
      'com_mob': serializer.toJson<String?>(com_mob),
      'com_email': serializer.toJson<String?>(com_email),
      'com_gstin': serializer.toJson<String?>(com_gstin),
      'com_sdate': serializer.toJson<String?>(com_sdate),
      'com_edate': serializer.toJson<String?>(com_edate),
      'com_state': serializer.toJson<String?>(com_state),
      'com_state_code': serializer.toJson<String?>(com_state_code),
      'com_bankac': serializer.toJson<String?>(com_bankac),
      'com_bank_accno': serializer.toJson<String?>(com_bank_accno),
      'com_bank_ifsc': serializer.toJson<String?>(com_bank_ifsc),
      'com_reg_date': serializer.toJson<String?>(com_reg_date),
      'com_appdata': serializer.toJson<String?>(com_appdata),
      'com_next_db': serializer.toJson<String?>(com_next_db),
      'com_comtype': serializer.toJson<String?>(com_comtype),
      'com_server': serializer.toJson<String?>(com_server),
      'com_pass': serializer.toJson<String?>(com_pass),
      'com_user': serializer.toJson<String?>(com_user),
      'com_product_prefix': serializer.toJson<String?>(com_product_prefix),
      'com_essl_path': serializer.toJson<String?>(com_essl_path),
      'com_lantimeTextColumn':
          serializer.toJson<String?>(com_lantimeTextColumn),
      'com_essl_min_halfday_hrsTextColumn':
          serializer.toJson<double?>(com_essl_min_halfday_hrsTextColumn),
      'com_essl_min_fullday_hrsTextColumn':
          serializer.toJson<double?>(com_essl_min_fullday_hrsTextColumn),
      'com_country': serializer.toJson<String?>(com_country),
      'com_country_code': serializer.toJson<String?>(com_country_code),
      'com_currency_code': serializer.toJson<String?>(com_currency_code),
      'com_currency_max': serializer.toJson<String?>(com_currency_max),
      'com_currency_min': serializer.toJson<String?>(com_currency_min),
      'com_location': serializer.toJson<String?>(com_location),
      'com_trade_name': serializer.toJson<String?>(com_trade_name),
      'com_pincodeTextColumn': serializer.toJson<int?>(com_pincodeTextColumn),
      'com_yd_statusTextColumn':
          serializer.toJson<int?>(com_yd_statusTextColumn),
      'com_yd_db_name': serializer.toJson<String?>(com_yd_db_name),
      'com_logo': serializer.toJson<String?>(com_logo),
      'com_ar_name': serializer.toJson<String?>(com_ar_name),
      'com_ar_add1': serializer.toJson<String?>(com_ar_add1),
      'com_ar_add2': serializer.toJson<String?>(com_ar_add2),
      'com_ar_add3': serializer.toJson<String?>(com_ar_add3),
      'com_ar_mob': serializer.toJson<String?>(com_ar_mob),
      'com_ar_vat': serializer.toJson<String?>(com_ar_vat),
    };
  }

  CompanyTableData copyWith(
          {int? id,
          Value<String?> comCode = const Value.absent(),
          Value<double?> comId = const Value.absent(),
          Value<String?> com_name = const Value.absent(),
          Value<String?> com_add1 = const Value.absent(),
          Value<String?> com_add2 = const Value.absent(),
          Value<String?> com_add3 = const Value.absent(),
          Value<String?> com_add4 = const Value.absent(),
          Value<String?> com_add5 = const Value.absent(),
          Value<String?> com_telephone = const Value.absent(),
          Value<String?> com_mob = const Value.absent(),
          Value<String?> com_email = const Value.absent(),
          Value<String?> com_gstin = const Value.absent(),
          Value<String?> com_sdate = const Value.absent(),
          Value<String?> com_edate = const Value.absent(),
          Value<String?> com_state = const Value.absent(),
          Value<String?> com_state_code = const Value.absent(),
          Value<String?> com_bankac = const Value.absent(),
          Value<String?> com_bank_accno = const Value.absent(),
          Value<String?> com_bank_ifsc = const Value.absent(),
          Value<String?> com_reg_date = const Value.absent(),
          Value<String?> com_appdata = const Value.absent(),
          Value<String?> com_next_db = const Value.absent(),
          Value<String?> com_comtype = const Value.absent(),
          Value<String?> com_server = const Value.absent(),
          Value<String?> com_pass = const Value.absent(),
          Value<String?> com_user = const Value.absent(),
          Value<String?> com_product_prefix = const Value.absent(),
          Value<String?> com_essl_path = const Value.absent(),
          Value<String?> com_lantimeTextColumn = const Value.absent(),
          Value<double?> com_essl_min_halfday_hrsTextColumn =
              const Value.absent(),
          Value<double?> com_essl_min_fullday_hrsTextColumn =
              const Value.absent(),
          Value<String?> com_country = const Value.absent(),
          Value<String?> com_country_code = const Value.absent(),
          Value<String?> com_currency_code = const Value.absent(),
          Value<String?> com_currency_max = const Value.absent(),
          Value<String?> com_currency_min = const Value.absent(),
          Value<String?> com_location = const Value.absent(),
          Value<String?> com_trade_name = const Value.absent(),
          Value<int?> com_pincodeTextColumn = const Value.absent(),
          Value<int?> com_yd_statusTextColumn = const Value.absent(),
          Value<String?> com_yd_db_name = const Value.absent(),
          Value<String?> com_logo = const Value.absent(),
          Value<String?> com_ar_name = const Value.absent(),
          Value<String?> com_ar_add1 = const Value.absent(),
          Value<String?> com_ar_add2 = const Value.absent(),
          Value<String?> com_ar_add3 = const Value.absent(),
          Value<String?> com_ar_mob = const Value.absent(),
          Value<String?> com_ar_vat = const Value.absent()}) =>
      CompanyTableData(
        id: id ?? this.id,
        comCode: comCode.present ? comCode.value : this.comCode,
        comId: comId.present ? comId.value : this.comId,
        com_name: com_name.present ? com_name.value : this.com_name,
        com_add1: com_add1.present ? com_add1.value : this.com_add1,
        com_add2: com_add2.present ? com_add2.value : this.com_add2,
        com_add3: com_add3.present ? com_add3.value : this.com_add3,
        com_add4: com_add4.present ? com_add4.value : this.com_add4,
        com_add5: com_add5.present ? com_add5.value : this.com_add5,
        com_telephone:
            com_telephone.present ? com_telephone.value : this.com_telephone,
        com_mob: com_mob.present ? com_mob.value : this.com_mob,
        com_email: com_email.present ? com_email.value : this.com_email,
        com_gstin: com_gstin.present ? com_gstin.value : this.com_gstin,
        com_sdate: com_sdate.present ? com_sdate.value : this.com_sdate,
        com_edate: com_edate.present ? com_edate.value : this.com_edate,
        com_state: com_state.present ? com_state.value : this.com_state,
        com_state_code:
            com_state_code.present ? com_state_code.value : this.com_state_code,
        com_bankac: com_bankac.present ? com_bankac.value : this.com_bankac,
        com_bank_accno:
            com_bank_accno.present ? com_bank_accno.value : this.com_bank_accno,
        com_bank_ifsc:
            com_bank_ifsc.present ? com_bank_ifsc.value : this.com_bank_ifsc,
        com_reg_date:
            com_reg_date.present ? com_reg_date.value : this.com_reg_date,
        com_appdata: com_appdata.present ? com_appdata.value : this.com_appdata,
        com_next_db: com_next_db.present ? com_next_db.value : this.com_next_db,
        com_comtype: com_comtype.present ? com_comtype.value : this.com_comtype,
        com_server: com_server.present ? com_server.value : this.com_server,
        com_pass: com_pass.present ? com_pass.value : this.com_pass,
        com_user: com_user.present ? com_user.value : this.com_user,
        com_product_prefix: com_product_prefix.present
            ? com_product_prefix.value
            : this.com_product_prefix,
        com_essl_path:
            com_essl_path.present ? com_essl_path.value : this.com_essl_path,
        com_lantimeTextColumn: com_lantimeTextColumn.present
            ? com_lantimeTextColumn.value
            : this.com_lantimeTextColumn,
        com_essl_min_halfday_hrsTextColumn:
            com_essl_min_halfday_hrsTextColumn.present
                ? com_essl_min_halfday_hrsTextColumn.value
                : this.com_essl_min_halfday_hrsTextColumn,
        com_essl_min_fullday_hrsTextColumn:
            com_essl_min_fullday_hrsTextColumn.present
                ? com_essl_min_fullday_hrsTextColumn.value
                : this.com_essl_min_fullday_hrsTextColumn,
        com_country: com_country.present ? com_country.value : this.com_country,
        com_country_code: com_country_code.present
            ? com_country_code.value
            : this.com_country_code,
        com_currency_code: com_currency_code.present
            ? com_currency_code.value
            : this.com_currency_code,
        com_currency_max: com_currency_max.present
            ? com_currency_max.value
            : this.com_currency_max,
        com_currency_min: com_currency_min.present
            ? com_currency_min.value
            : this.com_currency_min,
        com_location:
            com_location.present ? com_location.value : this.com_location,
        com_trade_name:
            com_trade_name.present ? com_trade_name.value : this.com_trade_name,
        com_pincodeTextColumn: com_pincodeTextColumn.present
            ? com_pincodeTextColumn.value
            : this.com_pincodeTextColumn,
        com_yd_statusTextColumn: com_yd_statusTextColumn.present
            ? com_yd_statusTextColumn.value
            : this.com_yd_statusTextColumn,
        com_yd_db_name:
            com_yd_db_name.present ? com_yd_db_name.value : this.com_yd_db_name,
        com_logo: com_logo.present ? com_logo.value : this.com_logo,
        com_ar_name: com_ar_name.present ? com_ar_name.value : this.com_ar_name,
        com_ar_add1: com_ar_add1.present ? com_ar_add1.value : this.com_ar_add1,
        com_ar_add2: com_ar_add2.present ? com_ar_add2.value : this.com_ar_add2,
        com_ar_add3: com_ar_add3.present ? com_ar_add3.value : this.com_ar_add3,
        com_ar_mob: com_ar_mob.present ? com_ar_mob.value : this.com_ar_mob,
        com_ar_vat: com_ar_vat.present ? com_ar_vat.value : this.com_ar_vat,
      );
  @override
  String toString() {
    return (StringBuffer('CompanyTableData(')
          ..write('id: $id, ')
          ..write('comCode: $comCode, ')
          ..write('comId: $comId, ')
          ..write('com_name: $com_name, ')
          ..write('com_add1: $com_add1, ')
          ..write('com_add2: $com_add2, ')
          ..write('com_add3: $com_add3, ')
          ..write('com_add4: $com_add4, ')
          ..write('com_add5: $com_add5, ')
          ..write('com_telephone: $com_telephone, ')
          ..write('com_mob: $com_mob, ')
          ..write('com_email: $com_email, ')
          ..write('com_gstin: $com_gstin, ')
          ..write('com_sdate: $com_sdate, ')
          ..write('com_edate: $com_edate, ')
          ..write('com_state: $com_state, ')
          ..write('com_state_code: $com_state_code, ')
          ..write('com_bankac: $com_bankac, ')
          ..write('com_bank_accno: $com_bank_accno, ')
          ..write('com_bank_ifsc: $com_bank_ifsc, ')
          ..write('com_reg_date: $com_reg_date, ')
          ..write('com_appdata: $com_appdata, ')
          ..write('com_next_db: $com_next_db, ')
          ..write('com_comtype: $com_comtype, ')
          ..write('com_server: $com_server, ')
          ..write('com_pass: $com_pass, ')
          ..write('com_user: $com_user, ')
          ..write('com_product_prefix: $com_product_prefix, ')
          ..write('com_essl_path: $com_essl_path, ')
          ..write('com_lantimeTextColumn: $com_lantimeTextColumn, ')
          ..write(
              'com_essl_min_halfday_hrsTextColumn: $com_essl_min_halfday_hrsTextColumn, ')
          ..write(
              'com_essl_min_fullday_hrsTextColumn: $com_essl_min_fullday_hrsTextColumn, ')
          ..write('com_country: $com_country, ')
          ..write('com_country_code: $com_country_code, ')
          ..write('com_currency_code: $com_currency_code, ')
          ..write('com_currency_max: $com_currency_max, ')
          ..write('com_currency_min: $com_currency_min, ')
          ..write('com_location: $com_location, ')
          ..write('com_trade_name: $com_trade_name, ')
          ..write('com_pincodeTextColumn: $com_pincodeTextColumn, ')
          ..write('com_yd_statusTextColumn: $com_yd_statusTextColumn, ')
          ..write('com_yd_db_name: $com_yd_db_name, ')
          ..write('com_logo: $com_logo, ')
          ..write('com_ar_name: $com_ar_name, ')
          ..write('com_ar_add1: $com_ar_add1, ')
          ..write('com_ar_add2: $com_ar_add2, ')
          ..write('com_ar_add3: $com_ar_add3, ')
          ..write('com_ar_mob: $com_ar_mob, ')
          ..write('com_ar_vat: $com_ar_vat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        comCode,
        comId,
        com_name,
        com_add1,
        com_add2,
        com_add3,
        com_add4,
        com_add5,
        com_telephone,
        com_mob,
        com_email,
        com_gstin,
        com_sdate,
        com_edate,
        com_state,
        com_state_code,
        com_bankac,
        com_bank_accno,
        com_bank_ifsc,
        com_reg_date,
        com_appdata,
        com_next_db,
        com_comtype,
        com_server,
        com_pass,
        com_user,
        com_product_prefix,
        com_essl_path,
        com_lantimeTextColumn,
        com_essl_min_halfday_hrsTextColumn,
        com_essl_min_fullday_hrsTextColumn,
        com_country,
        com_country_code,
        com_currency_code,
        com_currency_max,
        com_currency_min,
        com_location,
        com_trade_name,
        com_pincodeTextColumn,
        com_yd_statusTextColumn,
        com_yd_db_name,
        com_logo,
        com_ar_name,
        com_ar_add1,
        com_ar_add2,
        com_ar_add3,
        com_ar_mob,
        com_ar_vat
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyTableData &&
          other.id == this.id &&
          other.comCode == this.comCode &&
          other.comId == this.comId &&
          other.com_name == this.com_name &&
          other.com_add1 == this.com_add1 &&
          other.com_add2 == this.com_add2 &&
          other.com_add3 == this.com_add3 &&
          other.com_add4 == this.com_add4 &&
          other.com_add5 == this.com_add5 &&
          other.com_telephone == this.com_telephone &&
          other.com_mob == this.com_mob &&
          other.com_email == this.com_email &&
          other.com_gstin == this.com_gstin &&
          other.com_sdate == this.com_sdate &&
          other.com_edate == this.com_edate &&
          other.com_state == this.com_state &&
          other.com_state_code == this.com_state_code &&
          other.com_bankac == this.com_bankac &&
          other.com_bank_accno == this.com_bank_accno &&
          other.com_bank_ifsc == this.com_bank_ifsc &&
          other.com_reg_date == this.com_reg_date &&
          other.com_appdata == this.com_appdata &&
          other.com_next_db == this.com_next_db &&
          other.com_comtype == this.com_comtype &&
          other.com_server == this.com_server &&
          other.com_pass == this.com_pass &&
          other.com_user == this.com_user &&
          other.com_product_prefix == this.com_product_prefix &&
          other.com_essl_path == this.com_essl_path &&
          other.com_lantimeTextColumn == this.com_lantimeTextColumn &&
          other.com_essl_min_halfday_hrsTextColumn ==
              this.com_essl_min_halfday_hrsTextColumn &&
          other.com_essl_min_fullday_hrsTextColumn ==
              this.com_essl_min_fullday_hrsTextColumn &&
          other.com_country == this.com_country &&
          other.com_country_code == this.com_country_code &&
          other.com_currency_code == this.com_currency_code &&
          other.com_currency_max == this.com_currency_max &&
          other.com_currency_min == this.com_currency_min &&
          other.com_location == this.com_location &&
          other.com_trade_name == this.com_trade_name &&
          other.com_pincodeTextColumn == this.com_pincodeTextColumn &&
          other.com_yd_statusTextColumn == this.com_yd_statusTextColumn &&
          other.com_yd_db_name == this.com_yd_db_name &&
          other.com_logo == this.com_logo &&
          other.com_ar_name == this.com_ar_name &&
          other.com_ar_add1 == this.com_ar_add1 &&
          other.com_ar_add2 == this.com_ar_add2 &&
          other.com_ar_add3 == this.com_ar_add3 &&
          other.com_ar_mob == this.com_ar_mob &&
          other.com_ar_vat == this.com_ar_vat);
}

class CompanyTableCompanion extends UpdateCompanion<CompanyTableData> {
  final Value<int> id;
  final Value<String?> comCode;
  final Value<double?> comId;
  final Value<String?> com_name;
  final Value<String?> com_add1;
  final Value<String?> com_add2;
  final Value<String?> com_add3;
  final Value<String?> com_add4;
  final Value<String?> com_add5;
  final Value<String?> com_telephone;
  final Value<String?> com_mob;
  final Value<String?> com_email;
  final Value<String?> com_gstin;
  final Value<String?> com_sdate;
  final Value<String?> com_edate;
  final Value<String?> com_state;
  final Value<String?> com_state_code;
  final Value<String?> com_bankac;
  final Value<String?> com_bank_accno;
  final Value<String?> com_bank_ifsc;
  final Value<String?> com_reg_date;
  final Value<String?> com_appdata;
  final Value<String?> com_next_db;
  final Value<String?> com_comtype;
  final Value<String?> com_server;
  final Value<String?> com_pass;
  final Value<String?> com_user;
  final Value<String?> com_product_prefix;
  final Value<String?> com_essl_path;
  final Value<String?> com_lantimeTextColumn;
  final Value<double?> com_essl_min_halfday_hrsTextColumn;
  final Value<double?> com_essl_min_fullday_hrsTextColumn;
  final Value<String?> com_country;
  final Value<String?> com_country_code;
  final Value<String?> com_currency_code;
  final Value<String?> com_currency_max;
  final Value<String?> com_currency_min;
  final Value<String?> com_location;
  final Value<String?> com_trade_name;
  final Value<int?> com_pincodeTextColumn;
  final Value<int?> com_yd_statusTextColumn;
  final Value<String?> com_yd_db_name;
  final Value<String?> com_logo;
  final Value<String?> com_ar_name;
  final Value<String?> com_ar_add1;
  final Value<String?> com_ar_add2;
  final Value<String?> com_ar_add3;
  final Value<String?> com_ar_mob;
  final Value<String?> com_ar_vat;
  const CompanyTableCompanion({
    this.id = const Value.absent(),
    this.comCode = const Value.absent(),
    this.comId = const Value.absent(),
    this.com_name = const Value.absent(),
    this.com_add1 = const Value.absent(),
    this.com_add2 = const Value.absent(),
    this.com_add3 = const Value.absent(),
    this.com_add4 = const Value.absent(),
    this.com_add5 = const Value.absent(),
    this.com_telephone = const Value.absent(),
    this.com_mob = const Value.absent(),
    this.com_email = const Value.absent(),
    this.com_gstin = const Value.absent(),
    this.com_sdate = const Value.absent(),
    this.com_edate = const Value.absent(),
    this.com_state = const Value.absent(),
    this.com_state_code = const Value.absent(),
    this.com_bankac = const Value.absent(),
    this.com_bank_accno = const Value.absent(),
    this.com_bank_ifsc = const Value.absent(),
    this.com_reg_date = const Value.absent(),
    this.com_appdata = const Value.absent(),
    this.com_next_db = const Value.absent(),
    this.com_comtype = const Value.absent(),
    this.com_server = const Value.absent(),
    this.com_pass = const Value.absent(),
    this.com_user = const Value.absent(),
    this.com_product_prefix = const Value.absent(),
    this.com_essl_path = const Value.absent(),
    this.com_lantimeTextColumn = const Value.absent(),
    this.com_essl_min_halfday_hrsTextColumn = const Value.absent(),
    this.com_essl_min_fullday_hrsTextColumn = const Value.absent(),
    this.com_country = const Value.absent(),
    this.com_country_code = const Value.absent(),
    this.com_currency_code = const Value.absent(),
    this.com_currency_max = const Value.absent(),
    this.com_currency_min = const Value.absent(),
    this.com_location = const Value.absent(),
    this.com_trade_name = const Value.absent(),
    this.com_pincodeTextColumn = const Value.absent(),
    this.com_yd_statusTextColumn = const Value.absent(),
    this.com_yd_db_name = const Value.absent(),
    this.com_logo = const Value.absent(),
    this.com_ar_name = const Value.absent(),
    this.com_ar_add1 = const Value.absent(),
    this.com_ar_add2 = const Value.absent(),
    this.com_ar_add3 = const Value.absent(),
    this.com_ar_mob = const Value.absent(),
    this.com_ar_vat = const Value.absent(),
  });
  CompanyTableCompanion.insert({
    this.id = const Value.absent(),
    this.comCode = const Value.absent(),
    this.comId = const Value.absent(),
    this.com_name = const Value.absent(),
    this.com_add1 = const Value.absent(),
    this.com_add2 = const Value.absent(),
    this.com_add3 = const Value.absent(),
    this.com_add4 = const Value.absent(),
    this.com_add5 = const Value.absent(),
    this.com_telephone = const Value.absent(),
    this.com_mob = const Value.absent(),
    this.com_email = const Value.absent(),
    this.com_gstin = const Value.absent(),
    this.com_sdate = const Value.absent(),
    this.com_edate = const Value.absent(),
    this.com_state = const Value.absent(),
    this.com_state_code = const Value.absent(),
    this.com_bankac = const Value.absent(),
    this.com_bank_accno = const Value.absent(),
    this.com_bank_ifsc = const Value.absent(),
    this.com_reg_date = const Value.absent(),
    this.com_appdata = const Value.absent(),
    this.com_next_db = const Value.absent(),
    this.com_comtype = const Value.absent(),
    this.com_server = const Value.absent(),
    this.com_pass = const Value.absent(),
    this.com_user = const Value.absent(),
    this.com_product_prefix = const Value.absent(),
    this.com_essl_path = const Value.absent(),
    this.com_lantimeTextColumn = const Value.absent(),
    this.com_essl_min_halfday_hrsTextColumn = const Value.absent(),
    this.com_essl_min_fullday_hrsTextColumn = const Value.absent(),
    this.com_country = const Value.absent(),
    this.com_country_code = const Value.absent(),
    this.com_currency_code = const Value.absent(),
    this.com_currency_max = const Value.absent(),
    this.com_currency_min = const Value.absent(),
    this.com_location = const Value.absent(),
    this.com_trade_name = const Value.absent(),
    this.com_pincodeTextColumn = const Value.absent(),
    this.com_yd_statusTextColumn = const Value.absent(),
    this.com_yd_db_name = const Value.absent(),
    this.com_logo = const Value.absent(),
    this.com_ar_name = const Value.absent(),
    this.com_ar_add1 = const Value.absent(),
    this.com_ar_add2 = const Value.absent(),
    this.com_ar_add3 = const Value.absent(),
    this.com_ar_mob = const Value.absent(),
    this.com_ar_vat = const Value.absent(),
  });
  static Insertable<CompanyTableData> custom({
    Expression<int>? id,
    Expression<String>? comCode,
    Expression<double>? comId,
    Expression<String>? com_name,
    Expression<String>? com_add1,
    Expression<String>? com_add2,
    Expression<String>? com_add3,
    Expression<String>? com_add4,
    Expression<String>? com_add5,
    Expression<String>? com_telephone,
    Expression<String>? com_mob,
    Expression<String>? com_email,
    Expression<String>? com_gstin,
    Expression<String>? com_sdate,
    Expression<String>? com_edate,
    Expression<String>? com_state,
    Expression<String>? com_state_code,
    Expression<String>? com_bankac,
    Expression<String>? com_bank_accno,
    Expression<String>? com_bank_ifsc,
    Expression<String>? com_reg_date,
    Expression<String>? com_appdata,
    Expression<String>? com_next_db,
    Expression<String>? com_comtype,
    Expression<String>? com_server,
    Expression<String>? com_pass,
    Expression<String>? com_user,
    Expression<String>? com_product_prefix,
    Expression<String>? com_essl_path,
    Expression<String>? com_lantimeTextColumn,
    Expression<double>? com_essl_min_halfday_hrsTextColumn,
    Expression<double>? com_essl_min_fullday_hrsTextColumn,
    Expression<String>? com_country,
    Expression<String>? com_country_code,
    Expression<String>? com_currency_code,
    Expression<String>? com_currency_max,
    Expression<String>? com_currency_min,
    Expression<String>? com_location,
    Expression<String>? com_trade_name,
    Expression<int>? com_pincodeTextColumn,
    Expression<int>? com_yd_statusTextColumn,
    Expression<String>? com_yd_db_name,
    Expression<String>? com_logo,
    Expression<String>? com_ar_name,
    Expression<String>? com_ar_add1,
    Expression<String>? com_ar_add2,
    Expression<String>? com_ar_add3,
    Expression<String>? com_ar_mob,
    Expression<String>? com_ar_vat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (comCode != null) 'com_code': comCode,
      if (comId != null) 'com_id': comId,
      if (com_name != null) 'com_name': com_name,
      if (com_add1 != null) 'com_add1': com_add1,
      if (com_add2 != null) 'com_add2': com_add2,
      if (com_add3 != null) 'com_add3': com_add3,
      if (com_add4 != null) 'com_add4': com_add4,
      if (com_add5 != null) 'com_add5': com_add5,
      if (com_telephone != null) 'com_telephone': com_telephone,
      if (com_mob != null) 'com_mob': com_mob,
      if (com_email != null) 'com_email': com_email,
      if (com_gstin != null) 'com_gstin': com_gstin,
      if (com_sdate != null) 'com_sdate': com_sdate,
      if (com_edate != null) 'com_edate': com_edate,
      if (com_state != null) 'com_state': com_state,
      if (com_state_code != null) 'com_state_code': com_state_code,
      if (com_bankac != null) 'com_bankac': com_bankac,
      if (com_bank_accno != null) 'com_bank_accno': com_bank_accno,
      if (com_bank_ifsc != null) 'com_bank_ifsc': com_bank_ifsc,
      if (com_reg_date != null) 'com_reg_date': com_reg_date,
      if (com_appdata != null) 'com_appdata': com_appdata,
      if (com_next_db != null) 'com_next_db': com_next_db,
      if (com_comtype != null) 'com_comtype': com_comtype,
      if (com_server != null) 'com_server': com_server,
      if (com_pass != null) 'com_pass': com_pass,
      if (com_user != null) 'com_user': com_user,
      if (com_product_prefix != null) 'com_product_prefix': com_product_prefix,
      if (com_essl_path != null) 'com_essl_path': com_essl_path,
      if (com_lantimeTextColumn != null)
        'com_lantime_text_column': com_lantimeTextColumn,
      if (com_essl_min_halfday_hrsTextColumn != null)
        'com_essl_min_halfday_hrs_text_column':
            com_essl_min_halfday_hrsTextColumn,
      if (com_essl_min_fullday_hrsTextColumn != null)
        'com_essl_min_fullday_hrs_text_column':
            com_essl_min_fullday_hrsTextColumn,
      if (com_country != null) 'com_country': com_country,
      if (com_country_code != null) 'com_country_code': com_country_code,
      if (com_currency_code != null) 'com_currency_code': com_currency_code,
      if (com_currency_max != null) 'com_currency_max': com_currency_max,
      if (com_currency_min != null) 'com_currency_min': com_currency_min,
      if (com_location != null) 'com_location': com_location,
      if (com_trade_name != null) 'com_trade_name': com_trade_name,
      if (com_pincodeTextColumn != null)
        'com_pincode_text_column': com_pincodeTextColumn,
      if (com_yd_statusTextColumn != null)
        'com_yd_status_text_column': com_yd_statusTextColumn,
      if (com_yd_db_name != null) 'com_yd_db_name': com_yd_db_name,
      if (com_logo != null) 'com_logo': com_logo,
      if (com_ar_name != null) 'com_ar_name': com_ar_name,
      if (com_ar_add1 != null) 'com_ar_add1': com_ar_add1,
      if (com_ar_add2 != null) 'com_ar_add2': com_ar_add2,
      if (com_ar_add3 != null) 'com_ar_add3': com_ar_add3,
      if (com_ar_mob != null) 'com_ar_mob': com_ar_mob,
      if (com_ar_vat != null) 'com_ar_vat': com_ar_vat,
    });
  }

  CompanyTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? comCode,
      Value<double?>? comId,
      Value<String?>? com_name,
      Value<String?>? com_add1,
      Value<String?>? com_add2,
      Value<String?>? com_add3,
      Value<String?>? com_add4,
      Value<String?>? com_add5,
      Value<String?>? com_telephone,
      Value<String?>? com_mob,
      Value<String?>? com_email,
      Value<String?>? com_gstin,
      Value<String?>? com_sdate,
      Value<String?>? com_edate,
      Value<String?>? com_state,
      Value<String?>? com_state_code,
      Value<String?>? com_bankac,
      Value<String?>? com_bank_accno,
      Value<String?>? com_bank_ifsc,
      Value<String?>? com_reg_date,
      Value<String?>? com_appdata,
      Value<String?>? com_next_db,
      Value<String?>? com_comtype,
      Value<String?>? com_server,
      Value<String?>? com_pass,
      Value<String?>? com_user,
      Value<String?>? com_product_prefix,
      Value<String?>? com_essl_path,
      Value<String?>? com_lantimeTextColumn,
      Value<double?>? com_essl_min_halfday_hrsTextColumn,
      Value<double?>? com_essl_min_fullday_hrsTextColumn,
      Value<String?>? com_country,
      Value<String?>? com_country_code,
      Value<String?>? com_currency_code,
      Value<String?>? com_currency_max,
      Value<String?>? com_currency_min,
      Value<String?>? com_location,
      Value<String?>? com_trade_name,
      Value<int?>? com_pincodeTextColumn,
      Value<int?>? com_yd_statusTextColumn,
      Value<String?>? com_yd_db_name,
      Value<String?>? com_logo,
      Value<String?>? com_ar_name,
      Value<String?>? com_ar_add1,
      Value<String?>? com_ar_add2,
      Value<String?>? com_ar_add3,
      Value<String?>? com_ar_mob,
      Value<String?>? com_ar_vat}) {
    return CompanyTableCompanion(
      id: id ?? this.id,
      comCode: comCode ?? this.comCode,
      comId: comId ?? this.comId,
      com_name: com_name ?? this.com_name,
      com_add1: com_add1 ?? this.com_add1,
      com_add2: com_add2 ?? this.com_add2,
      com_add3: com_add3 ?? this.com_add3,
      com_add4: com_add4 ?? this.com_add4,
      com_add5: com_add5 ?? this.com_add5,
      com_telephone: com_telephone ?? this.com_telephone,
      com_mob: com_mob ?? this.com_mob,
      com_email: com_email ?? this.com_email,
      com_gstin: com_gstin ?? this.com_gstin,
      com_sdate: com_sdate ?? this.com_sdate,
      com_edate: com_edate ?? this.com_edate,
      com_state: com_state ?? this.com_state,
      com_state_code: com_state_code ?? this.com_state_code,
      com_bankac: com_bankac ?? this.com_bankac,
      com_bank_accno: com_bank_accno ?? this.com_bank_accno,
      com_bank_ifsc: com_bank_ifsc ?? this.com_bank_ifsc,
      com_reg_date: com_reg_date ?? this.com_reg_date,
      com_appdata: com_appdata ?? this.com_appdata,
      com_next_db: com_next_db ?? this.com_next_db,
      com_comtype: com_comtype ?? this.com_comtype,
      com_server: com_server ?? this.com_server,
      com_pass: com_pass ?? this.com_pass,
      com_user: com_user ?? this.com_user,
      com_product_prefix: com_product_prefix ?? this.com_product_prefix,
      com_essl_path: com_essl_path ?? this.com_essl_path,
      com_lantimeTextColumn:
          com_lantimeTextColumn ?? this.com_lantimeTextColumn,
      com_essl_min_halfday_hrsTextColumn: com_essl_min_halfday_hrsTextColumn ??
          this.com_essl_min_halfday_hrsTextColumn,
      com_essl_min_fullday_hrsTextColumn: com_essl_min_fullday_hrsTextColumn ??
          this.com_essl_min_fullday_hrsTextColumn,
      com_country: com_country ?? this.com_country,
      com_country_code: com_country_code ?? this.com_country_code,
      com_currency_code: com_currency_code ?? this.com_currency_code,
      com_currency_max: com_currency_max ?? this.com_currency_max,
      com_currency_min: com_currency_min ?? this.com_currency_min,
      com_location: com_location ?? this.com_location,
      com_trade_name: com_trade_name ?? this.com_trade_name,
      com_pincodeTextColumn:
          com_pincodeTextColumn ?? this.com_pincodeTextColumn,
      com_yd_statusTextColumn:
          com_yd_statusTextColumn ?? this.com_yd_statusTextColumn,
      com_yd_db_name: com_yd_db_name ?? this.com_yd_db_name,
      com_logo: com_logo ?? this.com_logo,
      com_ar_name: com_ar_name ?? this.com_ar_name,
      com_ar_add1: com_ar_add1 ?? this.com_ar_add1,
      com_ar_add2: com_ar_add2 ?? this.com_ar_add2,
      com_ar_add3: com_ar_add3 ?? this.com_ar_add3,
      com_ar_mob: com_ar_mob ?? this.com_ar_mob,
      com_ar_vat: com_ar_vat ?? this.com_ar_vat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (comCode.present) {
      map['com_code'] = Variable<String>(comCode.value);
    }
    if (comId.present) {
      map['com_id'] = Variable<double>(comId.value);
    }
    if (com_name.present) {
      map['com_name'] = Variable<String>(com_name.value);
    }
    if (com_add1.present) {
      map['com_add1'] = Variable<String>(com_add1.value);
    }
    if (com_add2.present) {
      map['com_add2'] = Variable<String>(com_add2.value);
    }
    if (com_add3.present) {
      map['com_add3'] = Variable<String>(com_add3.value);
    }
    if (com_add4.present) {
      map['com_add4'] = Variable<String>(com_add4.value);
    }
    if (com_add5.present) {
      map['com_add5'] = Variable<String>(com_add5.value);
    }
    if (com_telephone.present) {
      map['com_telephone'] = Variable<String>(com_telephone.value);
    }
    if (com_mob.present) {
      map['com_mob'] = Variable<String>(com_mob.value);
    }
    if (com_email.present) {
      map['com_email'] = Variable<String>(com_email.value);
    }
    if (com_gstin.present) {
      map['com_gstin'] = Variable<String>(com_gstin.value);
    }
    if (com_sdate.present) {
      map['com_sdate'] = Variable<String>(com_sdate.value);
    }
    if (com_edate.present) {
      map['com_edate'] = Variable<String>(com_edate.value);
    }
    if (com_state.present) {
      map['com_state'] = Variable<String>(com_state.value);
    }
    if (com_state_code.present) {
      map['com_state_code'] = Variable<String>(com_state_code.value);
    }
    if (com_bankac.present) {
      map['com_bankac'] = Variable<String>(com_bankac.value);
    }
    if (com_bank_accno.present) {
      map['com_bank_accno'] = Variable<String>(com_bank_accno.value);
    }
    if (com_bank_ifsc.present) {
      map['com_bank_ifsc'] = Variable<String>(com_bank_ifsc.value);
    }
    if (com_reg_date.present) {
      map['com_reg_date'] = Variable<String>(com_reg_date.value);
    }
    if (com_appdata.present) {
      map['com_appdata'] = Variable<String>(com_appdata.value);
    }
    if (com_next_db.present) {
      map['com_next_db'] = Variable<String>(com_next_db.value);
    }
    if (com_comtype.present) {
      map['com_comtype'] = Variable<String>(com_comtype.value);
    }
    if (com_server.present) {
      map['com_server'] = Variable<String>(com_server.value);
    }
    if (com_pass.present) {
      map['com_pass'] = Variable<String>(com_pass.value);
    }
    if (com_user.present) {
      map['com_user'] = Variable<String>(com_user.value);
    }
    if (com_product_prefix.present) {
      map['com_product_prefix'] = Variable<String>(com_product_prefix.value);
    }
    if (com_essl_path.present) {
      map['com_essl_path'] = Variable<String>(com_essl_path.value);
    }
    if (com_lantimeTextColumn.present) {
      map['com_lantime_text_column'] =
          Variable<String>(com_lantimeTextColumn.value);
    }
    if (com_essl_min_halfday_hrsTextColumn.present) {
      map['com_essl_min_halfday_hrs_text_column'] =
          Variable<double>(com_essl_min_halfday_hrsTextColumn.value);
    }
    if (com_essl_min_fullday_hrsTextColumn.present) {
      map['com_essl_min_fullday_hrs_text_column'] =
          Variable<double>(com_essl_min_fullday_hrsTextColumn.value);
    }
    if (com_country.present) {
      map['com_country'] = Variable<String>(com_country.value);
    }
    if (com_country_code.present) {
      map['com_country_code'] = Variable<String>(com_country_code.value);
    }
    if (com_currency_code.present) {
      map['com_currency_code'] = Variable<String>(com_currency_code.value);
    }
    if (com_currency_max.present) {
      map['com_currency_max'] = Variable<String>(com_currency_max.value);
    }
    if (com_currency_min.present) {
      map['com_currency_min'] = Variable<String>(com_currency_min.value);
    }
    if (com_location.present) {
      map['com_location'] = Variable<String>(com_location.value);
    }
    if (com_trade_name.present) {
      map['com_trade_name'] = Variable<String>(com_trade_name.value);
    }
    if (com_pincodeTextColumn.present) {
      map['com_pincode_text_column'] =
          Variable<int>(com_pincodeTextColumn.value);
    }
    if (com_yd_statusTextColumn.present) {
      map['com_yd_status_text_column'] =
          Variable<int>(com_yd_statusTextColumn.value);
    }
    if (com_yd_db_name.present) {
      map['com_yd_db_name'] = Variable<String>(com_yd_db_name.value);
    }
    if (com_logo.present) {
      map['com_logo'] = Variable<String>(com_logo.value);
    }
    if (com_ar_name.present) {
      map['com_ar_name'] = Variable<String>(com_ar_name.value);
    }
    if (com_ar_add1.present) {
      map['com_ar_add1'] = Variable<String>(com_ar_add1.value);
    }
    if (com_ar_add2.present) {
      map['com_ar_add2'] = Variable<String>(com_ar_add2.value);
    }
    if (com_ar_add3.present) {
      map['com_ar_add3'] = Variable<String>(com_ar_add3.value);
    }
    if (com_ar_mob.present) {
      map['com_ar_mob'] = Variable<String>(com_ar_mob.value);
    }
    if (com_ar_vat.present) {
      map['com_ar_vat'] = Variable<String>(com_ar_vat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyTableCompanion(')
          ..write('id: $id, ')
          ..write('comCode: $comCode, ')
          ..write('comId: $comId, ')
          ..write('com_name: $com_name, ')
          ..write('com_add1: $com_add1, ')
          ..write('com_add2: $com_add2, ')
          ..write('com_add3: $com_add3, ')
          ..write('com_add4: $com_add4, ')
          ..write('com_add5: $com_add5, ')
          ..write('com_telephone: $com_telephone, ')
          ..write('com_mob: $com_mob, ')
          ..write('com_email: $com_email, ')
          ..write('com_gstin: $com_gstin, ')
          ..write('com_sdate: $com_sdate, ')
          ..write('com_edate: $com_edate, ')
          ..write('com_state: $com_state, ')
          ..write('com_state_code: $com_state_code, ')
          ..write('com_bankac: $com_bankac, ')
          ..write('com_bank_accno: $com_bank_accno, ')
          ..write('com_bank_ifsc: $com_bank_ifsc, ')
          ..write('com_reg_date: $com_reg_date, ')
          ..write('com_appdata: $com_appdata, ')
          ..write('com_next_db: $com_next_db, ')
          ..write('com_comtype: $com_comtype, ')
          ..write('com_server: $com_server, ')
          ..write('com_pass: $com_pass, ')
          ..write('com_user: $com_user, ')
          ..write('com_product_prefix: $com_product_prefix, ')
          ..write('com_essl_path: $com_essl_path, ')
          ..write('com_lantimeTextColumn: $com_lantimeTextColumn, ')
          ..write(
              'com_essl_min_halfday_hrsTextColumn: $com_essl_min_halfday_hrsTextColumn, ')
          ..write(
              'com_essl_min_fullday_hrsTextColumn: $com_essl_min_fullday_hrsTextColumn, ')
          ..write('com_country: $com_country, ')
          ..write('com_country_code: $com_country_code, ')
          ..write('com_currency_code: $com_currency_code, ')
          ..write('com_currency_max: $com_currency_max, ')
          ..write('com_currency_min: $com_currency_min, ')
          ..write('com_location: $com_location, ')
          ..write('com_trade_name: $com_trade_name, ')
          ..write('com_pincodeTextColumn: $com_pincodeTextColumn, ')
          ..write('com_yd_statusTextColumn: $com_yd_statusTextColumn, ')
          ..write('com_yd_db_name: $com_yd_db_name, ')
          ..write('com_logo: $com_logo, ')
          ..write('com_ar_name: $com_ar_name, ')
          ..write('com_ar_add1: $com_ar_add1, ')
          ..write('com_ar_add2: $com_ar_add2, ')
          ..write('com_ar_add3: $com_ar_add3, ')
          ..write('com_ar_mob: $com_ar_mob, ')
          ..write('com_ar_vat: $com_ar_vat')
          ..write(')'))
        .toString();
  }
}

class $AndroidTableTable extends AndroidTable
    with TableInfo<$AndroidTableTable, AndroidTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AndroidTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _ansIdMeta = const VerificationMeta('ansId');
  @override
  late final GeneratedColumn<double> ansId = GeneratedColumn<double>(
      'ans_id', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _ansNameMeta =
      const VerificationMeta('ansName');
  @override
  late final GeneratedColumn<String> ansName = GeneratedColumn<String>(
      'ans_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ansStatusMeta =
      const VerificationMeta('ansStatus');
  @override
  late final GeneratedColumn<String> ansStatus = GeneratedColumn<String>(
      'ans_status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, ansId, ansName, ansStatus];
  @override
  String get aliasedName => _alias ?? 'android_table';
  @override
  String get actualTableName => 'android_table';
  @override
  VerificationContext validateIntegrity(Insertable<AndroidTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ans_id')) {
      context.handle(
          _ansIdMeta, ansId.isAcceptableOrUnknown(data['ans_id']!, _ansIdMeta));
    }
    if (data.containsKey('ans_name')) {
      context.handle(_ansNameMeta,
          ansName.isAcceptableOrUnknown(data['ans_name']!, _ansNameMeta));
    }
    if (data.containsKey('ans_status')) {
      context.handle(_ansStatusMeta,
          ansStatus.isAcceptableOrUnknown(data['ans_status']!, _ansStatusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AndroidTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AndroidTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      ansId: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ans_id']),
      ansName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ans_name']),
      ansStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ans_status']),
    );
  }

  @override
  $AndroidTableTable createAlias(String alias) {
    return $AndroidTableTable(attachedDatabase, alias);
  }
}

class AndroidTableData extends DataClass
    implements Insertable<AndroidTableData> {
  final int id;
  final double? ansId;
  final String? ansName;
  final String? ansStatus;
  const AndroidTableData(
      {required this.id, this.ansId, this.ansName, this.ansStatus});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || ansId != null) {
      map['ans_id'] = Variable<double>(ansId);
    }
    if (!nullToAbsent || ansName != null) {
      map['ans_name'] = Variable<String>(ansName);
    }
    if (!nullToAbsent || ansStatus != null) {
      map['ans_status'] = Variable<String>(ansStatus);
    }
    return map;
  }

  AndroidTableCompanion toCompanion(bool nullToAbsent) {
    return AndroidTableCompanion(
      id: Value(id),
      ansId:
          ansId == null && nullToAbsent ? const Value.absent() : Value(ansId),
      ansName: ansName == null && nullToAbsent
          ? const Value.absent()
          : Value(ansName),
      ansStatus: ansStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(ansStatus),
    );
  }

  factory AndroidTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AndroidTableData(
      id: serializer.fromJson<int>(json['id']),
      ansId: serializer.fromJson<double?>(json['ansId']),
      ansName: serializer.fromJson<String?>(json['ansName']),
      ansStatus: serializer.fromJson<String?>(json['ansStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ansId': serializer.toJson<double?>(ansId),
      'ansName': serializer.toJson<String?>(ansName),
      'ansStatus': serializer.toJson<String?>(ansStatus),
    };
  }

  AndroidTableData copyWith(
          {int? id,
          Value<double?> ansId = const Value.absent(),
          Value<String?> ansName = const Value.absent(),
          Value<String?> ansStatus = const Value.absent()}) =>
      AndroidTableData(
        id: id ?? this.id,
        ansId: ansId.present ? ansId.value : this.ansId,
        ansName: ansName.present ? ansName.value : this.ansName,
        ansStatus: ansStatus.present ? ansStatus.value : this.ansStatus,
      );
  @override
  String toString() {
    return (StringBuffer('AndroidTableData(')
          ..write('id: $id, ')
          ..write('ansId: $ansId, ')
          ..write('ansName: $ansName, ')
          ..write('ansStatus: $ansStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ansId, ansName, ansStatus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AndroidTableData &&
          other.id == this.id &&
          other.ansId == this.ansId &&
          other.ansName == this.ansName &&
          other.ansStatus == this.ansStatus);
}

class AndroidTableCompanion extends UpdateCompanion<AndroidTableData> {
  final Value<int> id;
  final Value<double?> ansId;
  final Value<String?> ansName;
  final Value<String?> ansStatus;
  const AndroidTableCompanion({
    this.id = const Value.absent(),
    this.ansId = const Value.absent(),
    this.ansName = const Value.absent(),
    this.ansStatus = const Value.absent(),
  });
  AndroidTableCompanion.insert({
    this.id = const Value.absent(),
    this.ansId = const Value.absent(),
    this.ansName = const Value.absent(),
    this.ansStatus = const Value.absent(),
  });
  static Insertable<AndroidTableData> custom({
    Expression<int>? id,
    Expression<double>? ansId,
    Expression<String>? ansName,
    Expression<String>? ansStatus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ansId != null) 'ans_id': ansId,
      if (ansName != null) 'ans_name': ansName,
      if (ansStatus != null) 'ans_status': ansStatus,
    });
  }

  AndroidTableCompanion copyWith(
      {Value<int>? id,
      Value<double?>? ansId,
      Value<String?>? ansName,
      Value<String?>? ansStatus}) {
    return AndroidTableCompanion(
      id: id ?? this.id,
      ansId: ansId ?? this.ansId,
      ansName: ansName ?? this.ansName,
      ansStatus: ansStatus ?? this.ansStatus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ansId.present) {
      map['ans_id'] = Variable<double>(ansId.value);
    }
    if (ansName.present) {
      map['ans_name'] = Variable<String>(ansName.value);
    }
    if (ansStatus.present) {
      map['ans_status'] = Variable<String>(ansStatus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AndroidTableCompanion(')
          ..write('id: $id, ')
          ..write('ansId: $ansId, ')
          ..write('ansName: $ansName, ')
          ..write('ansStatus: $ansStatus')
          ..write(')'))
        .toString();
  }
}

class $AllSalesTypeTableTable extends AllSalesTypeTable
    with TableInfo<$AllSalesTypeTableTable, AllSalesTypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AllSalesTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _strIdMeta = const VerificationMeta('strId');
  @override
  late final GeneratedColumn<String> strId = GeneratedColumn<String>(
      'str_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _strNameMeta =
      const VerificationMeta('strName');
  @override
  late final GeneratedColumn<String> strName = GeneratedColumn<String>(
      'str_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _strAccIdMeta =
      const VerificationMeta('strAccId');
  @override
  late final GeneratedColumn<int> strAccId = GeneratedColumn<int>(
      'str_acc_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _strTransferToMeta =
      const VerificationMeta('strTransferTo');
  @override
  late final GeneratedColumn<String> strTransferTo = GeneratedColumn<String>(
      'str_transfer_to', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, strId, strName, strAccId, strTransferTo];
  @override
  String get aliasedName => _alias ?? 'all_sales_type_table';
  @override
  String get actualTableName => 'all_sales_type_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AllSalesTypeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('str_id')) {
      context.handle(
          _strIdMeta, strId.isAcceptableOrUnknown(data['str_id']!, _strIdMeta));
    }
    if (data.containsKey('str_name')) {
      context.handle(_strNameMeta,
          strName.isAcceptableOrUnknown(data['str_name']!, _strNameMeta));
    }
    if (data.containsKey('str_acc_id')) {
      context.handle(_strAccIdMeta,
          strAccId.isAcceptableOrUnknown(data['str_acc_id']!, _strAccIdMeta));
    }
    if (data.containsKey('str_transfer_to')) {
      context.handle(
          _strTransferToMeta,
          strTransferTo.isAcceptableOrUnknown(
              data['str_transfer_to']!, _strTransferToMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AllSalesTypeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AllSalesTypeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      strId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_id']),
      strName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_name']),
      strAccId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}str_acc_id']),
      strTransferTo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_transfer_to']),
    );
  }

  @override
  $AllSalesTypeTableTable createAlias(String alias) {
    return $AllSalesTypeTableTable(attachedDatabase, alias);
  }
}

class AllSalesTypeTableData extends DataClass
    implements Insertable<AllSalesTypeTableData> {
  final int id;
  final String? strId;
  final String? strName;
  final int? strAccId;
  final String? strTransferTo;
  const AllSalesTypeTableData(
      {required this.id,
      this.strId,
      this.strName,
      this.strAccId,
      this.strTransferTo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || strId != null) {
      map['str_id'] = Variable<String>(strId);
    }
    if (!nullToAbsent || strName != null) {
      map['str_name'] = Variable<String>(strName);
    }
    if (!nullToAbsent || strAccId != null) {
      map['str_acc_id'] = Variable<int>(strAccId);
    }
    if (!nullToAbsent || strTransferTo != null) {
      map['str_transfer_to'] = Variable<String>(strTransferTo);
    }
    return map;
  }

  AllSalesTypeTableCompanion toCompanion(bool nullToAbsent) {
    return AllSalesTypeTableCompanion(
      id: Value(id),
      strId:
          strId == null && nullToAbsent ? const Value.absent() : Value(strId),
      strName: strName == null && nullToAbsent
          ? const Value.absent()
          : Value(strName),
      strAccId: strAccId == null && nullToAbsent
          ? const Value.absent()
          : Value(strAccId),
      strTransferTo: strTransferTo == null && nullToAbsent
          ? const Value.absent()
          : Value(strTransferTo),
    );
  }

  factory AllSalesTypeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AllSalesTypeTableData(
      id: serializer.fromJson<int>(json['id']),
      strId: serializer.fromJson<String?>(json['strId']),
      strName: serializer.fromJson<String?>(json['strName']),
      strAccId: serializer.fromJson<int?>(json['strAccId']),
      strTransferTo: serializer.fromJson<String?>(json['strTransferTo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'strId': serializer.toJson<String?>(strId),
      'strName': serializer.toJson<String?>(strName),
      'strAccId': serializer.toJson<int?>(strAccId),
      'strTransferTo': serializer.toJson<String?>(strTransferTo),
    };
  }

  AllSalesTypeTableData copyWith(
          {int? id,
          Value<String?> strId = const Value.absent(),
          Value<String?> strName = const Value.absent(),
          Value<int?> strAccId = const Value.absent(),
          Value<String?> strTransferTo = const Value.absent()}) =>
      AllSalesTypeTableData(
        id: id ?? this.id,
        strId: strId.present ? strId.value : this.strId,
        strName: strName.present ? strName.value : this.strName,
        strAccId: strAccId.present ? strAccId.value : this.strAccId,
        strTransferTo:
            strTransferTo.present ? strTransferTo.value : this.strTransferTo,
      );
  @override
  String toString() {
    return (StringBuffer('AllSalesTypeTableData(')
          ..write('id: $id, ')
          ..write('strId: $strId, ')
          ..write('strName: $strName, ')
          ..write('strAccId: $strAccId, ')
          ..write('strTransferTo: $strTransferTo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, strId, strName, strAccId, strTransferTo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AllSalesTypeTableData &&
          other.id == this.id &&
          other.strId == this.strId &&
          other.strName == this.strName &&
          other.strAccId == this.strAccId &&
          other.strTransferTo == this.strTransferTo);
}

class AllSalesTypeTableCompanion
    extends UpdateCompanion<AllSalesTypeTableData> {
  final Value<int> id;
  final Value<String?> strId;
  final Value<String?> strName;
  final Value<int?> strAccId;
  final Value<String?> strTransferTo;
  const AllSalesTypeTableCompanion({
    this.id = const Value.absent(),
    this.strId = const Value.absent(),
    this.strName = const Value.absent(),
    this.strAccId = const Value.absent(),
    this.strTransferTo = const Value.absent(),
  });
  AllSalesTypeTableCompanion.insert({
    this.id = const Value.absent(),
    this.strId = const Value.absent(),
    this.strName = const Value.absent(),
    this.strAccId = const Value.absent(),
    this.strTransferTo = const Value.absent(),
  });
  static Insertable<AllSalesTypeTableData> custom({
    Expression<int>? id,
    Expression<String>? strId,
    Expression<String>? strName,
    Expression<int>? strAccId,
    Expression<String>? strTransferTo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (strId != null) 'str_id': strId,
      if (strName != null) 'str_name': strName,
      if (strAccId != null) 'str_acc_id': strAccId,
      if (strTransferTo != null) 'str_transfer_to': strTransferTo,
    });
  }

  AllSalesTypeTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? strId,
      Value<String?>? strName,
      Value<int?>? strAccId,
      Value<String?>? strTransferTo}) {
    return AllSalesTypeTableCompanion(
      id: id ?? this.id,
      strId: strId ?? this.strId,
      strName: strName ?? this.strName,
      strAccId: strAccId ?? this.strAccId,
      strTransferTo: strTransferTo ?? this.strTransferTo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (strId.present) {
      map['str_id'] = Variable<String>(strId.value);
    }
    if (strName.present) {
      map['str_name'] = Variable<String>(strName.value);
    }
    if (strAccId.present) {
      map['str_acc_id'] = Variable<int>(strAccId.value);
    }
    if (strTransferTo.present) {
      map['str_transfer_to'] = Variable<String>(strTransferTo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AllSalesTypeTableCompanion(')
          ..write('id: $id, ')
          ..write('strId: $strId, ')
          ..write('strName: $strName, ')
          ..write('strAccId: $strAccId, ')
          ..write('strTransferTo: $strTransferTo')
          ..write(')'))
        .toString();
  }
}

class $AllRateTypeTableTable extends AllRateTypeTable
    with TableInfo<$AllRateTypeTableTable, AllRateTypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AllRateTypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _rtNameMeta = const VerificationMeta('rtName');
  @override
  late final GeneratedColumn<String> rtName = GeneratedColumn<String>(
      'rt_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value, rtName];
  @override
  String get aliasedName => _alias ?? 'all_rate_type_table';
  @override
  String get actualTableName => 'all_rate_type_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AllRateTypeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    if (data.containsKey('rt_name')) {
      context.handle(_rtNameMeta,
          rtName.isAcceptableOrUnknown(data['rt_name']!, _rtNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AllRateTypeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AllRateTypeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
      rtName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rt_name']),
    );
  }

  @override
  $AllRateTypeTableTable createAlias(String alias) {
    return $AllRateTypeTableTable(attachedDatabase, alias);
  }
}

class AllRateTypeTableData extends DataClass
    implements Insertable<AllRateTypeTableData> {
  final int id;
  final String? label;
  final double? value;
  final String? rtName;
  const AllRateTypeTableData(
      {required this.id, this.label, this.value, this.rtName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    if (!nullToAbsent || rtName != null) {
      map['rt_name'] = Variable<String>(rtName);
    }
    return map;
  }

  AllRateTypeTableCompanion toCompanion(bool nullToAbsent) {
    return AllRateTypeTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      rtName:
          rtName == null && nullToAbsent ? const Value.absent() : Value(rtName),
    );
  }

  factory AllRateTypeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AllRateTypeTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
      rtName: serializer.fromJson<String?>(json['rtName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
      'rtName': serializer.toJson<String?>(rtName),
    };
  }

  AllRateTypeTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent(),
          Value<String?> rtName = const Value.absent()}) =>
      AllRateTypeTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
        rtName: rtName.present ? rtName.value : this.rtName,
      );
  @override
  String toString() {
    return (StringBuffer('AllRateTypeTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value, ')
          ..write('rtName: $rtName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value, rtName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AllRateTypeTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value &&
          other.rtName == this.rtName);
}

class AllRateTypeTableCompanion extends UpdateCompanion<AllRateTypeTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  final Value<String?> rtName;
  const AllRateTypeTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
    this.rtName = const Value.absent(),
  });
  AllRateTypeTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
    this.rtName = const Value.absent(),
  });
  static Insertable<AllRateTypeTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
    Expression<String>? rtName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
      if (rtName != null) 'rt_name': rtName,
    });
  }

  AllRateTypeTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? label,
      Value<double?>? value,
      Value<String?>? rtName}) {
    return AllRateTypeTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
      rtName: rtName ?? this.rtName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (rtName.present) {
      map['rt_name'] = Variable<String>(rtName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AllRateTypeTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value, ')
          ..write('rtName: $rtName')
          ..write(')'))
        .toString();
  }
}

class $AllRoutesTableTable extends AllRoutesTable
    with TableInfo<$AllRoutesTableTable, AllRoutesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AllRoutesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'all_routes_table';
  @override
  String get actualTableName => 'all_routes_table';
  @override
  VerificationContext validateIntegrity(Insertable<AllRoutesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AllRoutesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AllRoutesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $AllRoutesTableTable createAlias(String alias) {
    return $AllRoutesTableTable(attachedDatabase, alias);
  }
}

class AllRoutesTableData extends DataClass
    implements Insertable<AllRoutesTableData> {
  final int id;
  final String? label;
  final double? value;
  const AllRoutesTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  AllRoutesTableCompanion toCompanion(bool nullToAbsent) {
    return AllRoutesTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory AllRoutesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AllRoutesTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  AllRoutesTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      AllRoutesTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('AllRoutesTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AllRoutesTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class AllRoutesTableCompanion extends UpdateCompanion<AllRoutesTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const AllRoutesTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  AllRoutesTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<AllRoutesTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  AllRoutesTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return AllRoutesTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AllRoutesTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $PermissionsTableTable extends PermissionsTable
    with TableInfo<$PermissionsTableTable, PermissionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PermissionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'permissions_table';
  @override
  String get actualTableName => 'permissions_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PermissionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PermissionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PermissionsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $PermissionsTableTable createAlias(String alias) {
    return $PermissionsTableTable(attachedDatabase, alias);
  }
}

class PermissionsTableData extends DataClass
    implements Insertable<PermissionsTableData> {
  final int id;
  final String? label;
  final double? value;
  const PermissionsTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  PermissionsTableCompanion toCompanion(bool nullToAbsent) {
    return PermissionsTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory PermissionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PermissionsTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  PermissionsTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      PermissionsTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('PermissionsTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PermissionsTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class PermissionsTableCompanion extends UpdateCompanion<PermissionsTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const PermissionsTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  PermissionsTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<PermissionsTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  PermissionsTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return PermissionsTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PermissionsTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $GnlUsersTableTable extends GnlUsersTable
    with TableInfo<$GnlUsersTableTable, GnlUsersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GnlUsersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'gnl_users_table';
  @override
  String get actualTableName => 'gnl_users_table';
  @override
  VerificationContext validateIntegrity(Insertable<GnlUsersTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GnlUsersTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GnlUsersTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $GnlUsersTableTable createAlias(String alias) {
    return $GnlUsersTableTable(attachedDatabase, alias);
  }
}

class GnlUsersTableData extends DataClass
    implements Insertable<GnlUsersTableData> {
  final int id;
  final String? label;
  final double? value;
  const GnlUsersTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  GnlUsersTableCompanion toCompanion(bool nullToAbsent) {
    return GnlUsersTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory GnlUsersTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GnlUsersTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  GnlUsersTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      GnlUsersTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('GnlUsersTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GnlUsersTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class GnlUsersTableCompanion extends UpdateCompanion<GnlUsersTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const GnlUsersTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  GnlUsersTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<GnlUsersTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  GnlUsersTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return GnlUsersTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GnlUsersTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $Company2TableTable extends Company2Table
    with TableInfo<$Company2TableTable, Company2TableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $Company2TableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'company2_table';
  @override
  String get actualTableName => 'company2_table';
  @override
  VerificationContext validateIntegrity(Insertable<Company2TableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Company2TableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Company2TableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $Company2TableTable createAlias(String alias) {
    return $Company2TableTable(attachedDatabase, alias);
  }
}

class Company2TableData extends DataClass
    implements Insertable<Company2TableData> {
  final int id;
  final String? label;
  final double? value;
  const Company2TableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  Company2TableCompanion toCompanion(bool nullToAbsent) {
    return Company2TableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory Company2TableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Company2TableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  Company2TableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      Company2TableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('Company2TableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Company2TableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class Company2TableCompanion extends UpdateCompanion<Company2TableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const Company2TableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  Company2TableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<Company2TableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  Company2TableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return Company2TableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('Company2TableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $ReceivingconditionTableTable extends ReceivingconditionTable
    with TableInfo<$ReceivingconditionTableTable, ReceivingconditionTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReceivingconditionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'receivingcondition_table';
  @override
  String get actualTableName => 'receivingcondition_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ReceivingconditionTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReceivingconditionTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReceivingconditionTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $ReceivingconditionTableTable createAlias(String alias) {
    return $ReceivingconditionTableTable(attachedDatabase, alias);
  }
}

class ReceivingconditionTableData extends DataClass
    implements Insertable<ReceivingconditionTableData> {
  final int id;
  final String? label;
  final double? value;
  const ReceivingconditionTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  ReceivingconditionTableCompanion toCompanion(bool nullToAbsent) {
    return ReceivingconditionTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory ReceivingconditionTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReceivingconditionTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  ReceivingconditionTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      ReceivingconditionTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('ReceivingconditionTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReceivingconditionTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class ReceivingconditionTableCompanion
    extends UpdateCompanion<ReceivingconditionTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const ReceivingconditionTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  ReceivingconditionTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<ReceivingconditionTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  ReceivingconditionTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return ReceivingconditionTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReceivingconditionTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $ServicetypeTableTable extends ServicetypeTable
    with TableInfo<$ServicetypeTableTable, ServicetypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServicetypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'servicetype_table';
  @override
  String get actualTableName => 'servicetype_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ServicetypeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ServicetypeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ServicetypeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $ServicetypeTableTable createAlias(String alias) {
    return $ServicetypeTableTable(attachedDatabase, alias);
  }
}

class ServicetypeTableData extends DataClass
    implements Insertable<ServicetypeTableData> {
  final int id;
  final String? label;
  final double? value;
  const ServicetypeTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  ServicetypeTableCompanion toCompanion(bool nullToAbsent) {
    return ServicetypeTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory ServicetypeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServicetypeTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  ServicetypeTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      ServicetypeTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('ServicetypeTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServicetypeTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class ServicetypeTableCompanion extends UpdateCompanion<ServicetypeTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const ServicetypeTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  ServicetypeTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<ServicetypeTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  ServicetypeTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return ServicetypeTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServicetypeTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $ComplaintsTableTable extends ComplaintsTable
    with TableInfo<$ComplaintsTableTable, ComplaintsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ComplaintsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'complaints_table';
  @override
  String get actualTableName => 'complaints_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ComplaintsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ComplaintsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ComplaintsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $ComplaintsTableTable createAlias(String alias) {
    return $ComplaintsTableTable(attachedDatabase, alias);
  }
}

class ComplaintsTableData extends DataClass
    implements Insertable<ComplaintsTableData> {
  final int id;
  final String? label;
  final double? value;
  const ComplaintsTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  ComplaintsTableCompanion toCompanion(bool nullToAbsent) {
    return ComplaintsTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory ComplaintsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ComplaintsTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  ComplaintsTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      ComplaintsTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('ComplaintsTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ComplaintsTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class ComplaintsTableCompanion extends UpdateCompanion<ComplaintsTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const ComplaintsTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  ComplaintsTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<ComplaintsTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  ComplaintsTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return ComplaintsTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ComplaintsTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $FixtypeTableTable extends FixtypeTable
    with TableInfo<$FixtypeTableTable, FixtypeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FixtypeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'fixtype_table';
  @override
  String get actualTableName => 'fixtype_table';
  @override
  VerificationContext validateIntegrity(Insertable<FixtypeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FixtypeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FixtypeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $FixtypeTableTable createAlias(String alias) {
    return $FixtypeTableTable(attachedDatabase, alias);
  }
}

class FixtypeTableData extends DataClass
    implements Insertable<FixtypeTableData> {
  final int id;
  final String? label;
  final double? value;
  const FixtypeTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  FixtypeTableCompanion toCompanion(bool nullToAbsent) {
    return FixtypeTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory FixtypeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FixtypeTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  FixtypeTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      FixtypeTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('FixtypeTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FixtypeTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class FixtypeTableCompanion extends UpdateCompanion<FixtypeTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const FixtypeTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  FixtypeTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<FixtypeTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  FixtypeTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return FixtypeTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FixtypeTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $WorkorderstatusTableTable extends WorkorderstatusTable
    with TableInfo<$WorkorderstatusTableTable, WorkorderstatusTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkorderstatusTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'workorderstatus_table';
  @override
  String get actualTableName => 'workorderstatus_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<WorkorderstatusTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkorderstatusTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkorderstatusTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $WorkorderstatusTableTable createAlias(String alias) {
    return $WorkorderstatusTableTable(attachedDatabase, alias);
  }
}

class WorkorderstatusTableData extends DataClass
    implements Insertable<WorkorderstatusTableData> {
  final int id;
  final String? label;
  final double? value;
  const WorkorderstatusTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  WorkorderstatusTableCompanion toCompanion(bool nullToAbsent) {
    return WorkorderstatusTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory WorkorderstatusTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkorderstatusTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  WorkorderstatusTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      WorkorderstatusTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('WorkorderstatusTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkorderstatusTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class WorkorderstatusTableCompanion
    extends UpdateCompanion<WorkorderstatusTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const WorkorderstatusTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  WorkorderstatusTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<WorkorderstatusTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  WorkorderstatusTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return WorkorderstatusTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkorderstatusTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $ColorTableTable extends ColorTable
    with TableInfo<$ColorTableTable, ColorTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ColorTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'color_table';
  @override
  String get actualTableName => 'color_table';
  @override
  VerificationContext validateIntegrity(Insertable<ColorTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ColorTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ColorTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $ColorTableTable createAlias(String alias) {
    return $ColorTableTable(attachedDatabase, alias);
  }
}

class ColorTableData extends DataClass implements Insertable<ColorTableData> {
  final int id;
  final String? label;
  final double? value;
  const ColorTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  ColorTableCompanion toCompanion(bool nullToAbsent) {
    return ColorTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory ColorTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ColorTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  ColorTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      ColorTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('ColorTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ColorTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class ColorTableCompanion extends UpdateCompanion<ColorTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const ColorTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  ColorTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<ColorTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  ColorTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return ColorTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ColorTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $DeliverystatusTableTable extends DeliverystatusTable
    with TableInfo<$DeliverystatusTableTable, DeliverystatusTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DeliverystatusTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'deliverystatus_table';
  @override
  String get actualTableName => 'deliverystatus_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DeliverystatusTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DeliverystatusTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DeliverystatusTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $DeliverystatusTableTable createAlias(String alias) {
    return $DeliverystatusTableTable(attachedDatabase, alias);
  }
}

class DeliverystatusTableData extends DataClass
    implements Insertable<DeliverystatusTableData> {
  final int id;
  final String? label;
  final double? value;
  const DeliverystatusTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  DeliverystatusTableCompanion toCompanion(bool nullToAbsent) {
    return DeliverystatusTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory DeliverystatusTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeliverystatusTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  DeliverystatusTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      DeliverystatusTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('DeliverystatusTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeliverystatusTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class DeliverystatusTableCompanion
    extends UpdateCompanion<DeliverystatusTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const DeliverystatusTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  DeliverystatusTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<DeliverystatusTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  DeliverystatusTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return DeliverystatusTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeliverystatusTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $CollecteditemsTableTable extends CollecteditemsTable
    with TableInfo<$CollecteditemsTableTable, CollecteditemsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollecteditemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'collecteditems_table';
  @override
  String get actualTableName => 'collecteditems_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollecteditemsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollecteditemsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollecteditemsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $CollecteditemsTableTable createAlias(String alias) {
    return $CollecteditemsTableTable(attachedDatabase, alias);
  }
}

class CollecteditemsTableData extends DataClass
    implements Insertable<CollecteditemsTableData> {
  final int id;
  final String? label;
  final double? value;
  const CollecteditemsTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  CollecteditemsTableCompanion toCompanion(bool nullToAbsent) {
    return CollecteditemsTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory CollecteditemsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollecteditemsTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  CollecteditemsTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      CollecteditemsTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('CollecteditemsTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollecteditemsTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class CollecteditemsTableCompanion
    extends UpdateCompanion<CollecteditemsTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const CollecteditemsTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  CollecteditemsTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<CollecteditemsTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  CollecteditemsTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return CollecteditemsTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollecteditemsTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $FormControlsTableTable extends FormControlsTable
    with TableInfo<$FormControlsTableTable, FormControlsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormControlsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'form_controls_table';
  @override
  String get actualTableName => 'form_controls_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<FormControlsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormControlsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormControlsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $FormControlsTableTable createAlias(String alias) {
    return $FormControlsTableTable(attachedDatabase, alias);
  }
}

class FormControlsTableData extends DataClass
    implements Insertable<FormControlsTableData> {
  final int id;
  final String? label;
  final double? value;
  const FormControlsTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  FormControlsTableCompanion toCompanion(bool nullToAbsent) {
    return FormControlsTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory FormControlsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormControlsTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  FormControlsTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      FormControlsTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('FormControlsTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormControlsTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class FormControlsTableCompanion
    extends UpdateCompanion<FormControlsTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const FormControlsTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  FormControlsTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<FormControlsTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  FormControlsTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return FormControlsTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormControlsTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $LenditemsTableTable extends LenditemsTable
    with TableInfo<$LenditemsTableTable, LenditemsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LenditemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, value];
  @override
  String get aliasedName => _alias ?? 'lenditems_table';
  @override
  String get actualTableName => 'lenditems_table';
  @override
  VerificationContext validateIntegrity(Insertable<LenditemsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LenditemsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LenditemsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
    );
  }

  @override
  $LenditemsTableTable createAlias(String alias) {
    return $LenditemsTableTable(attachedDatabase, alias);
  }
}

class LenditemsTableData extends DataClass
    implements Insertable<LenditemsTableData> {
  final int id;
  final String? label;
  final double? value;
  const LenditemsTableData({required this.id, this.label, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    return map;
  }

  LenditemsTableCompanion toCompanion(bool nullToAbsent) {
    return LenditemsTableCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory LenditemsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LenditemsTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      value: serializer.fromJson<double?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String?>(label),
      'value': serializer.toJson<double?>(value),
    };
  }

  LenditemsTableData copyWith(
          {int? id,
          Value<String?> label = const Value.absent(),
          Value<double?> value = const Value.absent()}) =>
      LenditemsTableData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('LenditemsTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LenditemsTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.value == this.value);
}

class LenditemsTableCompanion extends UpdateCompanion<LenditemsTableData> {
  final Value<int> id;
  final Value<String?> label;
  final Value<double?> value;
  const LenditemsTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  LenditemsTableCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<LenditemsTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (value != null) 'value': value,
    });
  }

  LenditemsTableCompanion copyWith(
      {Value<int>? id, Value<String?>? label, Value<double?>? value}) {
    return LenditemsTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LenditemsTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $LedgerTableTable ledgerTable = $LedgerTableTable(this);
  late final $GroupTableTable groupTable = $GroupTableTable(this);
  late final $LocationTableTable locationTable = $LocationTableTable(this);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $SubcategoryTableTable subcategoryTable =
      $SubcategoryTableTable(this);
  late final $BrandTableTable brandTable = $BrandTableTable(this);
  late final $ItemCodeTableTable itemCodeTable = $ItemCodeTableTable(this);
  late final $ItemNameTableTable itemNameTable = $ItemNameTableTable(this);
  late final $CustomerTableTable customerTable = $CustomerTableTable(this);
  late final $SalesmanTableTable salesmanTable = $SalesmanTableTable(this);
  late final $DistrictTableTable districtTable = $DistrictTableTable(this);
  late final $AreaTableTable areaTable = $AreaTableTable(this);
  late final $SalesTypeTableTable salesTypeTable = $SalesTypeTableTable(this);
  late final $CashTableTable cashTable = $CashTableTable(this);
  late final $BankTableTable bankTable = $BankTableTable(this);
  late final $CompanyTableTable companyTable = $CompanyTableTable(this);
  late final $AndroidTableTable androidTable = $AndroidTableTable(this);
  late final $AllSalesTypeTableTable allSalesTypeTable =
      $AllSalesTypeTableTable(this);
  late final $AllRateTypeTableTable allRateTypeTable =
      $AllRateTypeTableTable(this);
  late final $AllRoutesTableTable allRoutesTable = $AllRoutesTableTable(this);
  late final $PermissionsTableTable permissionsTable =
      $PermissionsTableTable(this);
  late final $GnlUsersTableTable gnlUsersTable = $GnlUsersTableTable(this);
  late final $Company2TableTable company2Table = $Company2TableTable(this);
  late final $ReceivingconditionTableTable receivingconditionTable =
      $ReceivingconditionTableTable(this);
  late final $ServicetypeTableTable servicetypeTable =
      $ServicetypeTableTable(this);
  late final $ComplaintsTableTable complaintsTable =
      $ComplaintsTableTable(this);
  late final $FixtypeTableTable fixtypeTable = $FixtypeTableTable(this);
  late final $WorkorderstatusTableTable workorderstatusTable =
      $WorkorderstatusTableTable(this);
  late final $ColorTableTable colorTable = $ColorTableTable(this);
  late final $DeliverystatusTableTable deliverystatusTable =
      $DeliverystatusTableTable(this);
  late final $CollecteditemsTableTable collecteditemsTable =
      $CollecteditemsTableTable(this);
  late final $FormControlsTableTable formControlsTable =
      $FormControlsTableTable(this);
  late final $LenditemsTableTable lenditemsTable = $LenditemsTableTable(this);
  Selectable<String?> getMaxUserId() {
    return customSelect('SELECT max(id) AS _c0 FROM user_table',
        variables: [],
        readsFrom: {}).map((QueryRow row) => row.readNullable<String>('_c0'));
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        ledgerTable,
        groupTable,
        locationTable,
        categoryTable,
        subcategoryTable,
        brandTable,
        itemCodeTable,
        itemNameTable,
        customerTable,
        salesmanTable,
        districtTable,
        areaTable,
        salesTypeTable,
        cashTable,
        bankTable,
        companyTable,
        androidTable,
        allSalesTypeTable,
        allRateTypeTable,
        allRoutesTable,
        permissionsTable,
        gnlUsersTable,
        company2Table,
        receivingconditionTable,
        servicetypeTable,
        complaintsTable,
        fixtypeTable,
        workorderstatusTable,
        colorTable,
        deliverystatusTable,
        collecteditemsTable,
        formControlsTable,
        lenditemsTable
      ];
}
