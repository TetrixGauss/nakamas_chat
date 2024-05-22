// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final String email;
  final String firestoreId;
  final String status;
  final String picture;
  final bool showPicture;
  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.firestoreId,
      required this.status,
      required this.picture,
      required this.showPicture});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['firestore_id'] = Variable<String>(firestoreId);
    map['status'] = Variable<String>(status);
    map['picture'] = Variable<String>(picture);
    map['show_picture'] = Variable<bool>(showPicture);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
      firestoreId: Value(firestoreId),
      status: Value(status),
      picture: Value(picture),
      showPicture: Value(showPicture),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      firestoreId: serializer.fromJson<String>(json['firestoreId']),
      status: serializer.fromJson<String>(json['status']),
      picture: serializer.fromJson<String>(json['picture']),
      showPicture: serializer.fromJson<bool>(json['showPicture']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'firestoreId': serializer.toJson<String>(firestoreId),
      'status': serializer.toJson<String>(status),
      'picture': serializer.toJson<String>(picture),
      'showPicture': serializer.toJson<bool>(showPicture),
    };
  }

  User copyWith(
          {int? id,
          String? name,
          String? email,
          String? firestoreId,
          String? status,
          String? picture,
          bool? showPicture}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        firestoreId: firestoreId ?? this.firestoreId,
        status: status ?? this.status,
        picture: picture ?? this.picture,
        showPicture: showPicture ?? this.showPicture,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('status: $status, ')
          ..write('picture: $picture, ')
          ..write('showPicture: $showPicture')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, email, firestoreId, status, picture, showPicture);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.firestoreId == this.firestoreId &&
          other.status == this.status &&
          other.picture == this.picture &&
          other.showPicture == this.showPicture);
}

class UserTableCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> firestoreId;
  final Value<String> status;
  final Value<String> picture;
  final Value<bool> showPicture;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.status = const Value.absent(),
    this.picture = const Value.absent(),
    this.showPicture = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String email,
    required String firestoreId,
    required String status,
    required String picture,
    this.showPicture = const Value.absent(),
  })  : name = Value(name),
        email = Value(email),
        firestoreId = Value(firestoreId),
        status = Value(status),
        picture = Value(picture);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? firestoreId,
    Expression<String>? status,
    Expression<String>? picture,
    Expression<bool>? showPicture,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (firestoreId != null) 'firestore_id': firestoreId,
      if (status != null) 'status': status,
      if (picture != null) 'picture': picture,
      if (showPicture != null) 'show_picture': showPicture,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? email,
      Value<String>? firestoreId,
      Value<String>? status,
      Value<String>? picture,
      Value<bool>? showPicture}) {
    return UserTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      firestoreId: firestoreId ?? this.firestoreId,
      status: status ?? this.status,
      picture: picture ?? this.picture,
      showPicture: showPicture ?? this.showPicture,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (firestoreId.present) {
      map['firestore_id'] = Variable<String>(firestoreId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String>(picture.value);
    }
    if (showPicture.present) {
      map['show_picture'] = Variable<bool>(showPicture.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('status: $status, ')
          ..write('picture: $picture, ')
          ..write('showPicture: $showPicture')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable with TableInfo<$UserTableTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firestoreIdMeta =
      const VerificationMeta('firestoreId');
  @override
  late final GeneratedColumn<String> firestoreId = GeneratedColumn<String>(
      'firestore_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pictureMeta =
      const VerificationMeta('picture');
  @override
  late final GeneratedColumn<String> picture = GeneratedColumn<String>(
      'picture', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _showPictureMeta =
      const VerificationMeta('showPicture');
  @override
  late final GeneratedColumn<bool> showPicture =
      GeneratedColumn<bool>('show_picture', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("show_picture" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, email, firestoreId, status, picture, showPicture];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('firestore_id')) {
      context.handle(
          _firestoreIdMeta,
          firestoreId.isAcceptableOrUnknown(
              data['firestore_id']!, _firestoreIdMeta));
    } else if (isInserting) {
      context.missing(_firestoreIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('picture')) {
      context.handle(_pictureMeta,
          picture.isAcceptableOrUnknown(data['picture']!, _pictureMeta));
    } else if (isInserting) {
      context.missing(_pictureMeta);
    }
    if (data.containsKey('show_picture')) {
      context.handle(
          _showPictureMeta,
          showPicture.isAcceptableOrUnknown(
              data['show_picture']!, _showPictureMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      firestoreId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firestore_id'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      picture: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}picture'])!,
      showPicture: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_picture'])!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

abstract class _$DatabaseHelper extends GeneratedDatabase {
  _$DatabaseHelper(QueryExecutor e) : super(e);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final UserDao userDao = UserDao(this as DatabaseHelper);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userTable];
}

mixin _$UserDaoMixin on DatabaseAccessor<DatabaseHelper> {
  $UserTableTable get userTable => attachedDatabase.userTable;
}
