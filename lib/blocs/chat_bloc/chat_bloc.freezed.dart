// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? convoID, String peerID, String message)
        sendMessage,
    required TResult Function(String convoID, String peerID) showMessages,
    required TResult Function() back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult? Function(String convoID, String peerID)? showMessages,
    TResult? Function()? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult Function(String convoID, String peerID)? showMessages,
    TResult Function()? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendMessageEvent value) sendMessage,
    required TResult Function(showMessagesEvent value) showMessages,
    required TResult Function(backEvent value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendMessageEvent value)? sendMessage,
    TResult? Function(showMessagesEvent value)? showMessages,
    TResult? Function(backEvent value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendMessageEvent value)? sendMessage,
    TResult Function(showMessagesEvent value)? showMessages,
    TResult Function(backEvent value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$sendMessageEventCopyWith<$Res> {
  factory _$$sendMessageEventCopyWith(
          _$sendMessageEvent value, $Res Function(_$sendMessageEvent) then) =
      __$$sendMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? convoID, String peerID, String message});
}

/// @nodoc
class __$$sendMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$sendMessageEvent>
    implements _$$sendMessageEventCopyWith<$Res> {
  __$$sendMessageEventCopyWithImpl(
      _$sendMessageEvent _value, $Res Function(_$sendMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? convoID = freezed,
    Object? peerID = null,
    Object? message = null,
  }) {
    return _then(_$sendMessageEvent(
      freezed == convoID
          ? _value.convoID
          : convoID // ignore: cast_nullable_to_non_nullable
              as String?,
      null == peerID
          ? _value.peerID
          : peerID // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$sendMessageEvent implements sendMessageEvent {
  const _$sendMessageEvent(this.convoID, this.peerID, this.message);

  @override
  final String? convoID;
  @override
  final String peerID;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(convoID: $convoID, peerID: $peerID, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendMessageEvent &&
            (identical(other.convoID, convoID) || other.convoID == convoID) &&
            (identical(other.peerID, peerID) || other.peerID == peerID) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, convoID, peerID, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sendMessageEventCopyWith<_$sendMessageEvent> get copyWith =>
      __$$sendMessageEventCopyWithImpl<_$sendMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? convoID, String peerID, String message)
        sendMessage,
    required TResult Function(String convoID, String peerID) showMessages,
    required TResult Function() back,
  }) {
    return sendMessage(convoID, peerID, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult? Function(String convoID, String peerID)? showMessages,
    TResult? Function()? back,
  }) {
    return sendMessage?.call(convoID, peerID, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult Function(String convoID, String peerID)? showMessages,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(convoID, peerID, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendMessageEvent value) sendMessage,
    required TResult Function(showMessagesEvent value) showMessages,
    required TResult Function(backEvent value) back,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendMessageEvent value)? sendMessage,
    TResult? Function(showMessagesEvent value)? showMessages,
    TResult? Function(backEvent value)? back,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendMessageEvent value)? sendMessage,
    TResult Function(showMessagesEvent value)? showMessages,
    TResult Function(backEvent value)? back,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class sendMessageEvent implements ChatEvent {
  const factory sendMessageEvent(
          final String? convoID, final String peerID, final String message) =
      _$sendMessageEvent;

  String? get convoID;
  String get peerID;
  String get message;
  @JsonKey(ignore: true)
  _$$sendMessageEventCopyWith<_$sendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$showMessagesEventCopyWith<$Res> {
  factory _$$showMessagesEventCopyWith(
          _$showMessagesEvent value, $Res Function(_$showMessagesEvent) then) =
      __$$showMessagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String convoID, String peerID});
}

/// @nodoc
class __$$showMessagesEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$showMessagesEvent>
    implements _$$showMessagesEventCopyWith<$Res> {
  __$$showMessagesEventCopyWithImpl(
      _$showMessagesEvent _value, $Res Function(_$showMessagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? convoID = null,
    Object? peerID = null,
  }) {
    return _then(_$showMessagesEvent(
      null == convoID
          ? _value.convoID
          : convoID // ignore: cast_nullable_to_non_nullable
              as String,
      null == peerID
          ? _value.peerID
          : peerID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$showMessagesEvent implements showMessagesEvent {
  const _$showMessagesEvent(this.convoID, this.peerID);

  @override
  final String convoID;
  @override
  final String peerID;

  @override
  String toString() {
    return 'ChatEvent.showMessages(convoID: $convoID, peerID: $peerID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$showMessagesEvent &&
            (identical(other.convoID, convoID) || other.convoID == convoID) &&
            (identical(other.peerID, peerID) || other.peerID == peerID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, convoID, peerID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$showMessagesEventCopyWith<_$showMessagesEvent> get copyWith =>
      __$$showMessagesEventCopyWithImpl<_$showMessagesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? convoID, String peerID, String message)
        sendMessage,
    required TResult Function(String convoID, String peerID) showMessages,
    required TResult Function() back,
  }) {
    return showMessages(convoID, peerID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult? Function(String convoID, String peerID)? showMessages,
    TResult? Function()? back,
  }) {
    return showMessages?.call(convoID, peerID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult Function(String convoID, String peerID)? showMessages,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (showMessages != null) {
      return showMessages(convoID, peerID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendMessageEvent value) sendMessage,
    required TResult Function(showMessagesEvent value) showMessages,
    required TResult Function(backEvent value) back,
  }) {
    return showMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendMessageEvent value)? sendMessage,
    TResult? Function(showMessagesEvent value)? showMessages,
    TResult? Function(backEvent value)? back,
  }) {
    return showMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendMessageEvent value)? sendMessage,
    TResult Function(showMessagesEvent value)? showMessages,
    TResult Function(backEvent value)? back,
    required TResult orElse(),
  }) {
    if (showMessages != null) {
      return showMessages(this);
    }
    return orElse();
  }
}

abstract class showMessagesEvent implements ChatEvent {
  const factory showMessagesEvent(final String convoID, final String peerID) =
      _$showMessagesEvent;

  String get convoID;
  String get peerID;
  @JsonKey(ignore: true)
  _$$showMessagesEventCopyWith<_$showMessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$backEventCopyWith<$Res> {
  factory _$$backEventCopyWith(
          _$backEvent value, $Res Function(_$backEvent) then) =
      __$$backEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$backEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$backEvent>
    implements _$$backEventCopyWith<$Res> {
  __$$backEventCopyWithImpl(
      _$backEvent _value, $Res Function(_$backEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$backEvent implements backEvent {
  const _$backEvent();

  @override
  String toString() {
    return 'ChatEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$backEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? convoID, String peerID, String message)
        sendMessage,
    required TResult Function(String convoID, String peerID) showMessages,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult? Function(String convoID, String peerID)? showMessages,
    TResult? Function()? back,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? convoID, String peerID, String message)?
        sendMessage,
    TResult Function(String convoID, String peerID)? showMessages,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(sendMessageEvent value) sendMessage,
    required TResult Function(showMessagesEvent value) showMessages,
    required TResult Function(backEvent value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(sendMessageEvent value)? sendMessage,
    TResult? Function(showMessagesEvent value)? showMessages,
    TResult? Function(backEvent value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(sendMessageEvent value)? sendMessage,
    TResult Function(showMessagesEvent value)? showMessages,
    TResult Function(backEvent value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class backEvent implements ChatEvent {
  const factory backEvent() = _$backEvent;
}

/// @nodoc
mixin _$ChatState {
  ChatStatus get chatStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  String get uId => throw _privateConstructorUsedError;
  ScrollController get listScrollController =>
      throw _privateConstructorUsedError;
  TextEditingController get textEditingController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {ChatStatus chatStatus,
      String errorMessage,
      List<Message> messages,
      String uId,
      ScrollController listScrollController,
      TextEditingController textEditingController});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatStatus = null,
    Object? errorMessage = null,
    Object? messages = null,
    Object? uId = null,
    Object? listScrollController = null,
    Object? textEditingController = null,
  }) {
    return _then(_value.copyWith(
      chatStatus: null == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      listScrollController: null == listScrollController
          ? _value.listScrollController
          : listScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$chatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$chatStateCopyWith(
          _$chatState value, $Res Function(_$chatState) then) =
      __$$chatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatStatus chatStatus,
      String errorMessage,
      List<Message> messages,
      String uId,
      ScrollController listScrollController,
      TextEditingController textEditingController});
}

/// @nodoc
class __$$chatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$chatState>
    implements _$$chatStateCopyWith<$Res> {
  __$$chatStateCopyWithImpl(
      _$chatState _value, $Res Function(_$chatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatStatus = null,
    Object? errorMessage = null,
    Object? messages = null,
    Object? uId = null,
    Object? listScrollController = null,
    Object? textEditingController = null,
  }) {
    return _then(_$chatState(
      chatStatus: null == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      listScrollController: null == listScrollController
          ? _value.listScrollController
          : listScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$chatState implements chatState {
  const _$chatState(
      {required this.chatStatus,
      required this.errorMessage,
      required final List<Message> messages,
      required this.uId,
      required this.listScrollController,
      required this.textEditingController})
      : _messages = messages;

  @override
  final ChatStatus chatStatus;
  @override
  final String errorMessage;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String uId;
  @override
  final ScrollController listScrollController;
  @override
  final TextEditingController textEditingController;

  @override
  String toString() {
    return 'ChatState(chatStatus: $chatStatus, errorMessage: $errorMessage, messages: $messages, uId: $uId, listScrollController: $listScrollController, textEditingController: $textEditingController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatState &&
            (identical(other.chatStatus, chatStatus) ||
                other.chatStatus == chatStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.listScrollController, listScrollController) ||
                other.listScrollController == listScrollController) &&
            (identical(other.textEditingController, textEditingController) ||
                other.textEditingController == textEditingController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_messages),
      uId,
      listScrollController,
      textEditingController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$chatStateCopyWith<_$chatState> get copyWith =>
      __$$chatStateCopyWithImpl<_$chatState>(this, _$identity);
}

abstract class chatState implements ChatState {
  const factory chatState(
          {required final ChatStatus chatStatus,
          required final String errorMessage,
          required final List<Message> messages,
          required final String uId,
          required final ScrollController listScrollController,
          required final TextEditingController textEditingController}) =
      _$chatState;

  @override
  ChatStatus get chatStatus;
  @override
  String get errorMessage;
  @override
  List<Message> get messages;
  @override
  String get uId;
  @override
  ScrollController get listScrollController;
  @override
  TextEditingController get textEditingController;
  @override
  @JsonKey(ignore: true)
  _$$chatStateCopyWith<_$chatState> get copyWith =>
      throw _privateConstructorUsedError;
}
