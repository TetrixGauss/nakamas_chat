// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loggedIn) goTo,
    required TResult Function() checkLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loggedIn)? goTo,
    TResult? Function()? checkLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loggedIn)? goTo,
    TResult Function()? checkLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(goToEvent value) goTo,
    required TResult Function(checkLoggedInEvent value) checkLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(goToEvent value)? goTo,
    TResult? Function(checkLoggedInEvent value)? checkLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(goToEvent value)? goTo,
    TResult Function(checkLoggedInEvent value)? checkLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$goToEventCopyWith<$Res> {
  factory _$$goToEventCopyWith(
          _$goToEvent value, $Res Function(_$goToEvent) then) =
      __$$goToEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool loggedIn});
}

/// @nodoc
class __$$goToEventCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$goToEvent>
    implements _$$goToEventCopyWith<$Res> {
  __$$goToEventCopyWithImpl(
      _$goToEvent _value, $Res Function(_$goToEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
  }) {
    return _then(_$goToEvent(
      null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$goToEvent implements goToEvent {
  const _$goToEvent(this.loggedIn);

  @override
  final bool loggedIn;

  @override
  String toString() {
    return 'SplashEvent.goTo(loggedIn: $loggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$goToEvent &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$goToEventCopyWith<_$goToEvent> get copyWith =>
      __$$goToEventCopyWithImpl<_$goToEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loggedIn) goTo,
    required TResult Function() checkLoggedIn,
  }) {
    return goTo(loggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loggedIn)? goTo,
    TResult? Function()? checkLoggedIn,
  }) {
    return goTo?.call(loggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loggedIn)? goTo,
    TResult Function()? checkLoggedIn,
    required TResult orElse(),
  }) {
    if (goTo != null) {
      return goTo(loggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(goToEvent value) goTo,
    required TResult Function(checkLoggedInEvent value) checkLoggedIn,
  }) {
    return goTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(goToEvent value)? goTo,
    TResult? Function(checkLoggedInEvent value)? checkLoggedIn,
  }) {
    return goTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(goToEvent value)? goTo,
    TResult Function(checkLoggedInEvent value)? checkLoggedIn,
    required TResult orElse(),
  }) {
    if (goTo != null) {
      return goTo(this);
    }
    return orElse();
  }
}

abstract class goToEvent implements SplashEvent {
  const factory goToEvent(final bool loggedIn) = _$goToEvent;

  bool get loggedIn;
  @JsonKey(ignore: true)
  _$$goToEventCopyWith<_$goToEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkLoggedInEventCopyWith<$Res> {
  factory _$$checkLoggedInEventCopyWith(_$checkLoggedInEvent value,
          $Res Function(_$checkLoggedInEvent) then) =
      __$$checkLoggedInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkLoggedInEventCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$checkLoggedInEvent>
    implements _$$checkLoggedInEventCopyWith<$Res> {
  __$$checkLoggedInEventCopyWithImpl(
      _$checkLoggedInEvent _value, $Res Function(_$checkLoggedInEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkLoggedInEvent implements checkLoggedInEvent {
  const _$checkLoggedInEvent();

  @override
  String toString() {
    return 'SplashEvent.checkLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkLoggedInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loggedIn) goTo,
    required TResult Function() checkLoggedIn,
  }) {
    return checkLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loggedIn)? goTo,
    TResult? Function()? checkLoggedIn,
  }) {
    return checkLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loggedIn)? goTo,
    TResult Function()? checkLoggedIn,
    required TResult orElse(),
  }) {
    if (checkLoggedIn != null) {
      return checkLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(goToEvent value) goTo,
    required TResult Function(checkLoggedInEvent value) checkLoggedIn,
  }) {
    return checkLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(goToEvent value)? goTo,
    TResult? Function(checkLoggedInEvent value)? checkLoggedIn,
  }) {
    return checkLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(goToEvent value)? goTo,
    TResult Function(checkLoggedInEvent value)? checkLoggedIn,
    required TResult orElse(),
  }) {
    if (checkLoggedIn != null) {
      return checkLoggedIn(this);
    }
    return orElse();
  }
}

abstract class checkLoggedInEvent implements SplashEvent {
  const factory checkLoggedInEvent() = _$checkLoggedInEvent;
}

/// @nodoc
mixin _$SplashState {
  SplashStatus get splashStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({SplashStatus splashStatus});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashStatus = null,
  }) {
    return _then(_value.copyWith(
      splashStatus: null == splashStatus
          ? _value.splashStatus
          : splashStatus // ignore: cast_nullable_to_non_nullable
              as SplashStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$splashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$splashStateCopyWith(
          _$splashState value, $Res Function(_$splashState) then) =
      __$$splashStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashStatus splashStatus});
}

/// @nodoc
class __$$splashStateCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$splashState>
    implements _$$splashStateCopyWith<$Res> {
  __$$splashStateCopyWithImpl(
      _$splashState _value, $Res Function(_$splashState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashStatus = null,
  }) {
    return _then(_$splashState(
      splashStatus: null == splashStatus
          ? _value.splashStatus
          : splashStatus // ignore: cast_nullable_to_non_nullable
              as SplashStatus,
    ));
  }
}

/// @nodoc

class _$splashState implements splashState {
  const _$splashState({required this.splashStatus});

  @override
  final SplashStatus splashStatus;

  @override
  String toString() {
    return 'SplashState(splashStatus: $splashStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$splashState &&
            (identical(other.splashStatus, splashStatus) ||
                other.splashStatus == splashStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, splashStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$splashStateCopyWith<_$splashState> get copyWith =>
      __$$splashStateCopyWithImpl<_$splashState>(this, _$identity);
}

abstract class splashState implements SplashState {
  const factory splashState({required final SplashStatus splashStatus}) =
      _$splashState;

  @override
  SplashStatus get splashStatus;
  @override
  @JsonKey(ignore: true)
  _$$splashStateCopyWith<_$splashState> get copyWith =>
      throw _privateConstructorUsedError;
}
