// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Training extends _Training
    with RealmEntity, RealmObjectBase, RealmObject {
  Training(
    String name,
  ) {
    RealmObjectBase.set(this, 'name', name);
  }

  Training._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Training>> get changes =>
      RealmObjectBase.getChanges<Training>(this);

  @override
  Stream<RealmObjectChanges<Training>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Training>(this, keyPaths);

  @override
  Training freeze() => RealmObjectBase.freezeObject<Training>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(Training value) => value.toEJson();
  static Training _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
      } =>
        Training(
          fromEJson(name),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Training._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Training, 'Training', [
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
