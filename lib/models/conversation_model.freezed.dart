// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  @JsonKey(name: 'lastMessage')
  Map<dynamic, dynamic> get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  List<dynamic> get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'firestoreId')
  String get firestoreId => throw _privateConstructorUsedError;
  String get interlocutor => throw _privateConstructorUsedError;
  String get interlocutorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lastMessage') Map<dynamic, dynamic> lastMessage,
      @JsonKey(name: 'users') List<dynamic> users,
      @JsonKey(name: 'firestoreId') String firestoreId,
      String interlocutor,
      String interlocutorId});
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMessage = null,
    Object? users = null,
    Object? firestoreId = null,
    Object? interlocutor = null,
    Object? interlocutorId = null,
  }) {
    return _then(_value.copyWith(
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      firestoreId: null == firestoreId
          ? _value.firestoreId
          : firestoreId // ignore: cast_nullable_to_non_nullable
              as String,
      interlocutor: null == interlocutor
          ? _value.interlocutor
          : interlocutor // ignore: cast_nullable_to_non_nullable
              as String,
      interlocutorId: null == interlocutorId
          ? _value.interlocutorId
          : interlocutorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$_ConversationCopyWith(
          _$_Conversation value, $Res Function(_$_Conversation) then) =
      __$$_ConversationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lastMessage') Map<dynamic, dynamic> lastMessage,
      @JsonKey(name: 'users') List<dynamic> users,
      @JsonKey(name: 'firestoreId') String firestoreId,
      String interlocutor,
      String interlocutorId});
}

/// @nodoc
class __$$_ConversationCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$_Conversation>
    implements _$$_ConversationCopyWith<$Res> {
  __$$_ConversationCopyWithImpl(
      _$_Conversation _value, $Res Function(_$_Conversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMessage = null,
    Object? users = null,
    Object? firestoreId = null,
    Object? interlocutor = null,
    Object? interlocutorId = null,
  }) {
    return _then(_$_Conversation(
      lastMessage: null == lastMessage
          ? _value._lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      firestoreId: null == firestoreId
          ? _value.firestoreId
          : firestoreId // ignore: cast_nullable_to_non_nullable
              as String,
      interlocutor: null == interlocutor
          ? _value.interlocutor
          : interlocutor // ignore: cast_nullable_to_non_nullable
              as String,
      interlocutorId: null == interlocutorId
          ? _value.interlocutorId
          : interlocutorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Conversation implements _Conversation {
  _$_Conversation(
      {@JsonKey(name: 'lastMessage')
          required final Map<dynamic, dynamic> lastMessage,
      @JsonKey(name: 'users')
          required final List<dynamic> users,
      @JsonKey(name: 'firestoreId')
          required this.firestoreId,
      required this.interlocutor,
      required this.interlocutorId})
      : _lastMessage = lastMessage,
        _users = users;

  factory _$_Conversation.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationFromJson(json);

  final Map<dynamic, dynamic> _lastMessage;
  @override
  @JsonKey(name: 'lastMessage')
  Map<dynamic, dynamic> get lastMessage {
    if (_lastMessage is EqualUnmodifiableMapView) return _lastMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lastMessage);
  }

  final List<dynamic> _users;
  @override
  @JsonKey(name: 'users')
  List<dynamic> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey(name: 'firestoreId')
  final String firestoreId;
  @override
  final String interlocutor;
  @override
  final String interlocutorId;

  @override
  String toString() {
    return 'Conversation(lastMessage: $lastMessage, users: $users, firestoreId: $firestoreId, interlocutor: $interlocutor, interlocutorId: $interlocutorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversation &&
            const DeepCollectionEquality()
                .equals(other._lastMessage, _lastMessage) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.firestoreId, firestoreId) ||
                other.firestoreId == firestoreId) &&
            (identical(other.interlocutor, interlocutor) ||
                other.interlocutor == interlocutor) &&
            (identical(other.interlocutorId, interlocutorId) ||
                other.interlocutorId == interlocutorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastMessage),
      const DeepCollectionEquality().hash(_users),
      firestoreId,
      interlocutor,
      interlocutorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      __$$_ConversationCopyWithImpl<_$_Conversation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationToJson(
      this,
    );
  }
}

abstract class _Conversation implements Conversation {
  factory _Conversation(
      {@JsonKey(name: 'lastMessage')
          required final Map<dynamic, dynamic> lastMessage,
      @JsonKey(name: 'users')
          required final List<dynamic> users,
      @JsonKey(name: 'firestoreId')
          required final String firestoreId,
      required final String interlocutor,
      required final String interlocutorId}) = _$_Conversation;

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$_Conversation.fromJson;

  @override
  @JsonKey(name: 'lastMessage')
  Map<dynamic, dynamic> get lastMessage;
  @override
  @JsonKey(name: 'users')
  List<dynamic> get users;
  @override
  @JsonKey(name: 'firestoreId')
  String get firestoreId;
  @override
  String get interlocutor;
  @override
  String get interlocutorId;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}
