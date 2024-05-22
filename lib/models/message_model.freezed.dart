// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'convoID')
  String get convoID => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'idFrom')
  String get idFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'idTo')
  String get idTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'read')
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'convoID') String convoID,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'idFrom') String idFrom,
      @JsonKey(name: 'idTo') String idTo,
      @JsonKey(name: 'read') bool read,
      @JsonKey(name: 'timestamp') DateTime timestamp});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? convoID = null,
    Object? content = null,
    Object? idFrom = null,
    Object? idTo = null,
    Object? read = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      convoID: null == convoID
          ? _value.convoID
          : convoID // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'convoID') String convoID,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'idFrom') String idFrom,
      @JsonKey(name: 'idTo') String idTo,
      @JsonKey(name: 'read') bool read,
      @JsonKey(name: 'timestamp') DateTime timestamp});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? convoID = null,
    Object? content = null,
    Object? idFrom = null,
    Object? idTo = null,
    Object? read = null,
    Object? timestamp = null,
  }) {
    return _then(_$_Message(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      convoID: null == convoID
          ? _value.convoID
          : convoID // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  _$_Message(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'convoID') required this.convoID,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'idFrom') required this.idFrom,
      @JsonKey(name: 'idTo') required this.idTo,
      @JsonKey(name: 'read') required this.read,
      @JsonKey(name: 'timestamp') required this.timestamp});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'convoID')
  final String convoID;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'idFrom')
  final String idFrom;
  @override
  @JsonKey(name: 'idTo')
  final String idTo;
  @override
  @JsonKey(name: 'read')
  final bool read;
  @override
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;

  @override
  String toString() {
    return 'Message(id: $id, convoID: $convoID, content: $content, idFrom: $idFrom, idTo: $idTo, read: $read, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.convoID, convoID) || other.convoID == convoID) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, convoID, content, idFrom, idTo, read, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  factory _Message(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'convoID') required final String convoID,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'idFrom') required final String idFrom,
          @JsonKey(name: 'idTo') required final String idTo,
          @JsonKey(name: 'read') required final bool read,
          @JsonKey(name: 'timestamp') required final DateTime timestamp}) =
      _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'convoID')
  String get convoID;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'idFrom')
  String get idFrom;
  @override
  @JsonKey(name: 'idTo')
  String get idTo;
  @override
  @JsonKey(name: 'read')
  bool get read;
  @override
  @JsonKey(name: 'timestamp')
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
