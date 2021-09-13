// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _OnLoading onLoading() {
    return const _OnLoading();
  }

  _OnError onError(String errorMessage) {
    return _OnError(
      errorMessage,
    );
  }

  _OnGetLocation onGetLocation(List<LocationDataModel> locations) {
    return _OnGetLocation(
      locations,
    );
  }

  _OnValidateLocation onValidateLocation(List<String> location) {
    return _OnValidateLocation(
      location,
    );
  }

  _OnAuthenticate onAuthenticate(LocationDataModel user) {
    return _OnAuthenticate(
      user,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnLoadingCopyWith<$Res> {
  factory _$OnLoadingCopyWith(
          _OnLoading value, $Res Function(_OnLoading) then) =
      __$OnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnLoadingCopyWith<$Res> {
  __$OnLoadingCopyWithImpl(_OnLoading _value, $Res Function(_OnLoading) _then)
      : super(_value, (v) => _then(v as _OnLoading));

  @override
  _OnLoading get _value => super._value as _OnLoading;
}

/// @nodoc

class _$_OnLoading implements _OnLoading {
  const _$_OnLoading();

  @override
  String toString() {
    return 'AuthState.onLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) {
    return onLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) {
    return onLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class _OnLoading implements AuthState {
  const factory _OnLoading() = _$_OnLoading;
}

/// @nodoc
abstract class _$OnErrorCopyWith<$Res> {
  factory _$OnErrorCopyWith(_OnError value, $Res Function(_OnError) then) =
      __$OnErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$OnErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnErrorCopyWith<$Res> {
  __$OnErrorCopyWithImpl(_OnError _value, $Res Function(_OnError) _then)
      : super(_value, (v) => _then(v as _OnError));

  @override
  _OnError get _value => super._value as _OnError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_OnError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.onError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$OnErrorCopyWith<_OnError> get copyWith =>
      __$OnErrorCopyWithImpl<_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) {
    return onError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) {
    return onError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements AuthState {
  const factory _OnError(String errorMessage) = _$_OnError;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnErrorCopyWith<_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetLocationCopyWith<$Res> {
  factory _$OnGetLocationCopyWith(
          _OnGetLocation value, $Res Function(_OnGetLocation) then) =
      __$OnGetLocationCopyWithImpl<$Res>;
  $Res call({List<LocationDataModel> locations});
}

/// @nodoc
class __$OnGetLocationCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnGetLocationCopyWith<$Res> {
  __$OnGetLocationCopyWithImpl(
      _OnGetLocation _value, $Res Function(_OnGetLocation) _then)
      : super(_value, (v) => _then(v as _OnGetLocation));

  @override
  _OnGetLocation get _value => super._value as _OnGetLocation;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_OnGetLocation(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetLocation implements _OnGetLocation {
  const _$_OnGetLocation(this.locations);

  @override
  final List<LocationDataModel> locations;

  @override
  String toString() {
    return 'AuthState.onGetLocation(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetLocation &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locations);

  @JsonKey(ignore: true)
  @override
  _$OnGetLocationCopyWith<_OnGetLocation> get copyWith =>
      __$OnGetLocationCopyWithImpl<_OnGetLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) {
    return onGetLocation(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) {
    return onGetLocation?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onGetLocation != null) {
      return onGetLocation(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) {
    return onGetLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) {
    return onGetLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onGetLocation != null) {
      return onGetLocation(this);
    }
    return orElse();
  }
}

abstract class _OnGetLocation implements AuthState {
  const factory _OnGetLocation(List<LocationDataModel> locations) =
      _$_OnGetLocation;

  List<LocationDataModel> get locations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetLocationCopyWith<_OnGetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnValidateLocationCopyWith<$Res> {
  factory _$OnValidateLocationCopyWith(
          _OnValidateLocation value, $Res Function(_OnValidateLocation) then) =
      __$OnValidateLocationCopyWithImpl<$Res>;
  $Res call({List<String> location});
}

/// @nodoc
class __$OnValidateLocationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnValidateLocationCopyWith<$Res> {
  __$OnValidateLocationCopyWithImpl(
      _OnValidateLocation _value, $Res Function(_OnValidateLocation) _then)
      : super(_value, (v) => _then(v as _OnValidateLocation));

  @override
  _OnValidateLocation get _value => super._value as _OnValidateLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_OnValidateLocation(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_OnValidateLocation implements _OnValidateLocation {
  const _$_OnValidateLocation(this.location);

  @override
  final List<String> location;

  @override
  String toString() {
    return 'AuthState.onValidateLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnValidateLocation &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$OnValidateLocationCopyWith<_OnValidateLocation> get copyWith =>
      __$OnValidateLocationCopyWithImpl<_OnValidateLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) {
    return onValidateLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) {
    return onValidateLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onValidateLocation != null) {
      return onValidateLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) {
    return onValidateLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) {
    return onValidateLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onValidateLocation != null) {
      return onValidateLocation(this);
    }
    return orElse();
  }
}

abstract class _OnValidateLocation implements AuthState {
  const factory _OnValidateLocation(List<String> location) =
      _$_OnValidateLocation;

  List<String> get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnValidateLocationCopyWith<_OnValidateLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnAuthenticateCopyWith<$Res> {
  factory _$OnAuthenticateCopyWith(
          _OnAuthenticate value, $Res Function(_OnAuthenticate) then) =
      __$OnAuthenticateCopyWithImpl<$Res>;
  $Res call({LocationDataModel user});

  $LocationDataModelCopyWith<$Res> get user;
}

/// @nodoc
class __$OnAuthenticateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$OnAuthenticateCopyWith<$Res> {
  __$OnAuthenticateCopyWithImpl(
      _OnAuthenticate _value, $Res Function(_OnAuthenticate) _then)
      : super(_value, (v) => _then(v as _OnAuthenticate));

  @override
  _OnAuthenticate get _value => super._value as _OnAuthenticate;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_OnAuthenticate(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocationDataModel,
    ));
  }

  @override
  $LocationDataModelCopyWith<$Res> get user {
    return $LocationDataModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_OnAuthenticate implements _OnAuthenticate {
  const _$_OnAuthenticate(this.user);

  @override
  final LocationDataModel user;

  @override
  String toString() {
    return 'AuthState.onAuthenticate(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnAuthenticate &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$OnAuthenticateCopyWith<_OnAuthenticate> get copyWith =>
      __$OnAuthenticateCopyWithImpl<_OnAuthenticate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(String errorMessage) onError,
    required TResult Function(List<LocationDataModel> locations) onGetLocation,
    required TResult Function(List<String> location) onValidateLocation,
    required TResult Function(LocationDataModel user) onAuthenticate,
  }) {
    return onAuthenticate(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
  }) {
    return onAuthenticate?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(String errorMessage)? onError,
    TResult Function(List<LocationDataModel> locations)? onGetLocation,
    TResult Function(List<String> location)? onValidateLocation,
    TResult Function(LocationDataModel user)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onAuthenticate != null) {
      return onAuthenticate(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetLocation value) onGetLocation,
    required TResult Function(_OnValidateLocation value) onValidateLocation,
    required TResult Function(_OnAuthenticate value) onAuthenticate,
  }) {
    return onAuthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
  }) {
    return onAuthenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetLocation value)? onGetLocation,
    TResult Function(_OnValidateLocation value)? onValidateLocation,
    TResult Function(_OnAuthenticate value)? onAuthenticate,
    required TResult orElse(),
  }) {
    if (onAuthenticate != null) {
      return onAuthenticate(this);
    }
    return orElse();
  }
}

abstract class _OnAuthenticate implements AuthState {
  const factory _OnAuthenticate(LocationDataModel user) = _$_OnAuthenticate;

  LocationDataModel get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnAuthenticateCopyWith<_OnAuthenticate> get copyWith =>
      throw _privateConstructorUsedError;
}
