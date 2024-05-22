import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nakamas_chat/database/database.dart' as db;

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'firestoreId') required String firestoreId,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'picture') required String picture,

    required bool showPicture,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromDB(db.User user) {
    return User(
        id: user.id,
        name: user.name,
        email: user.email,
        firestoreId: user.firestoreId,
        status: user.status,
        picture: user.picture,
        showPicture: user.showPicture);
  }

  factory User.newUser() {
    return User(
        id: 0,
        name: "",
        email: "",
        firestoreId: "",
        status: "",
        picture: "",
        showPicture: false);
  }

  factory User.fromFirestore(Map<String, dynamic> data) {
    return User(
        id: 0,
        name: data["name"],
        email: data["email"],
        firestoreId: data["id"],
        status: data["status"],
        picture: data["picture"],
        showPicture: data["showPicture"]);
  }
}