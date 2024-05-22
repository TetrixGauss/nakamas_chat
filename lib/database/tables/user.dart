part of 'package:nakamas_chat/database/database.dart';

@DataClassName("User")
class UserTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get email => text()();

  TextColumn get firestoreId => text()();

  TextColumn get status => text()();
  TextColumn get picture => text()();
  BoolColumn get showPicture => boolean().withDefault(const Constant(false))();

}
