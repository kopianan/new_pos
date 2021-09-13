// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaleStateTearOff {
  const _$SaleStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _IsError isError(String error) {
    return _IsError(
      error,
    );
  }

  _OnGetAllProducts onGetAllProducts(List<ProductDataModel> list) {
    return _OnGetAllProducts(
      list,
    );
  }

  _OnGetCustomer onGetCustomer(List<CustomerDataModel>? list) {
    return _OnGetCustomer(
      list,
    );
  }
}

/// @nodoc
const $SaleState = _$SaleStateTearOff();

/// @nodoc
mixin _$SaleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleStateCopyWith<$Res> {
  factory $SaleStateCopyWith(SaleState value, $Res Function(SaleState) then) =
      _$SaleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaleStateCopyWithImpl<$Res> implements $SaleStateCopyWith<$Res> {
  _$SaleStateCopyWithImpl(this._value, this._then);

  final SaleState _value;
  // ignore: unused_field
  final $Res Function(SaleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
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
    return 'SaleState.initial()';
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
    required TResult Function() isLoading,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
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
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SaleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'SaleState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements SaleState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsErrorCopyWith<$Res> {
  factory _$IsErrorCopyWith(_IsError value, $Res Function(_IsError) then) =
      __$IsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$IsErrorCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$IsErrorCopyWith<$Res> {
  __$IsErrorCopyWithImpl(_IsError _value, $Res Function(_IsError) _then)
      : super(_value, (v) => _then(v as _IsError));

  @override
  _IsError get _value => super._value as _IsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_IsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsError implements _IsError {
  const _$_IsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SaleState.isError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$IsErrorCopyWith<_IsError> get copyWith =>
      __$IsErrorCopyWithImpl<_IsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
  }) {
    return isError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
  }) {
    return isError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
  }) {
    return isError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements SaleState {
  const factory _IsError(String error) = _$_IsError;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsErrorCopyWith<_IsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetAllProductsCopyWith<$Res> {
  factory _$OnGetAllProductsCopyWith(
          _OnGetAllProducts value, $Res Function(_OnGetAllProducts) then) =
      __$OnGetAllProductsCopyWithImpl<$Res>;
  $Res call({List<ProductDataModel> list});
}

/// @nodoc
class __$OnGetAllProductsCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$OnGetAllProductsCopyWith<$Res> {
  __$OnGetAllProductsCopyWithImpl(
      _OnGetAllProducts _value, $Res Function(_OnGetAllProducts) _then)
      : super(_value, (v) => _then(v as _OnGetAllProducts));

  @override
  _OnGetAllProducts get _value => super._value as _OnGetAllProducts;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_OnGetAllProducts(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetAllProducts implements _OnGetAllProducts {
  const _$_OnGetAllProducts(this.list);

  @override
  final List<ProductDataModel> list;

  @override
  String toString() {
    return 'SaleState.onGetAllProducts(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetAllProducts &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$OnGetAllProductsCopyWith<_OnGetAllProducts> get copyWith =>
      __$OnGetAllProductsCopyWithImpl<_OnGetAllProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
  }) {
    return onGetAllProducts(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
  }) {
    return onGetAllProducts?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (onGetAllProducts != null) {
      return onGetAllProducts(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
  }) {
    return onGetAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
  }) {
    return onGetAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (onGetAllProducts != null) {
      return onGetAllProducts(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllProducts implements SaleState {
  const factory _OnGetAllProducts(List<ProductDataModel> list) =
      _$_OnGetAllProducts;

  List<ProductDataModel> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetAllProductsCopyWith<_OnGetAllProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetCustomerCopyWith<$Res> {
  factory _$OnGetCustomerCopyWith(
          _OnGetCustomer value, $Res Function(_OnGetCustomer) then) =
      __$OnGetCustomerCopyWithImpl<$Res>;
  $Res call({List<CustomerDataModel>? list});
}

/// @nodoc
class __$OnGetCustomerCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$OnGetCustomerCopyWith<$Res> {
  __$OnGetCustomerCopyWithImpl(
      _OnGetCustomer _value, $Res Function(_OnGetCustomer) _then)
      : super(_value, (v) => _then(v as _OnGetCustomer));

  @override
  _OnGetCustomer get _value => super._value as _OnGetCustomer;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_OnGetCustomer(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CustomerDataModel>?,
    ));
  }
}

/// @nodoc

class _$_OnGetCustomer implements _OnGetCustomer {
  const _$_OnGetCustomer(this.list);

  @override
  final List<CustomerDataModel>? list;

  @override
  String toString() {
    return 'SaleState.onGetCustomer(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetCustomer &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$OnGetCustomerCopyWith<_OnGetCustomer> get copyWith =>
      __$OnGetCustomerCopyWithImpl<_OnGetCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
  }) {
    return onGetCustomer(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
  }) {
    return onGetCustomer?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (onGetCustomer != null) {
      return onGetCustomer(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
  }) {
    return onGetCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
  }) {
    return onGetCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    required TResult orElse(),
  }) {
    if (onGetCustomer != null) {
      return onGetCustomer(this);
    }
    return orElse();
  }
}

abstract class _OnGetCustomer implements SaleState {
  const factory _OnGetCustomer(List<CustomerDataModel>? list) =
      _$_OnGetCustomer;

  List<CustomerDataModel>? get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetCustomerCopyWith<_OnGetCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}
