// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
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
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
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
abstract class _$$_IsLoadingCopyWith<$Res> {
  factory _$$_IsLoadingCopyWith(
          _$_IsLoading value, $Res Function(_$_IsLoading) then) =
      __$$_IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsLoadingCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_IsLoadingCopyWith<$Res> {
  __$$_IsLoadingCopyWithImpl(
      _$_IsLoading _value, $Res Function(_$_IsLoading) _then)
      : super(_value, (v) => _then(v as _$_IsLoading));

  @override
  _$_IsLoading get _value => super._value as _$_IsLoading;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
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
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
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
abstract class _$$_IsLoadingDiscountCopyWith<$Res> {
  factory _$$_IsLoadingDiscountCopyWith(_$_IsLoadingDiscount value,
          $Res Function(_$_IsLoadingDiscount) then) =
      __$$_IsLoadingDiscountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsLoadingDiscountCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_IsLoadingDiscountCopyWith<$Res> {
  __$$_IsLoadingDiscountCopyWithImpl(
      _$_IsLoadingDiscount _value, $Res Function(_$_IsLoadingDiscount) _then)
      : super(_value, (v) => _then(v as _$_IsLoadingDiscount));

  @override
  _$_IsLoadingDiscount get _value => super._value as _$_IsLoadingDiscount;
}

/// @nodoc

class _$_IsLoadingDiscount implements _IsLoadingDiscount {
  const _$_IsLoadingDiscount();

  @override
  String toString() {
    return 'SaleState.isLoadingDiscount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsLoadingDiscount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return isLoadingDiscount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return isLoadingDiscount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (isLoadingDiscount != null) {
      return isLoadingDiscount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return isLoadingDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return isLoadingDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (isLoadingDiscount != null) {
      return isLoadingDiscount(this);
    }
    return orElse();
  }
}

abstract class _IsLoadingDiscount implements SaleState {
  const factory _IsLoadingDiscount() = _$_IsLoadingDiscount;
}

/// @nodoc
abstract class _$$_IsErrorCopyWith<$Res> {
  factory _$$_IsErrorCopyWith(
          _$_IsError value, $Res Function(_$_IsError) then) =
      __$$_IsErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_IsErrorCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_IsErrorCopyWith<$Res> {
  __$$_IsErrorCopyWithImpl(_$_IsError _value, $Res Function(_$_IsError) _then)
      : super(_value, (v) => _then(v as _$_IsError));

  @override
  _$_IsError get _value => super._value as _$_IsError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_IsError(
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
        (other.runtimeType == runtimeType &&
            other is _$_IsError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_IsErrorCopyWith<_$_IsError> get copyWith =>
      __$$_IsErrorCopyWithImpl<_$_IsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return isError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return isError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
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
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return isError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _IsError implements SaleState {
  const factory _IsError(final String error) = _$_IsError;

  String get error;
  @JsonKey(ignore: true)
  _$$_IsErrorCopyWith<_$_IsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetAllProductsCopyWith<$Res> {
  factory _$$_OnGetAllProductsCopyWith(
          _$_OnGetAllProducts value, $Res Function(_$_OnGetAllProducts) then) =
      __$$_OnGetAllProductsCopyWithImpl<$Res>;
  $Res call({List<ProductDataModel> list});
}

/// @nodoc
class __$$_OnGetAllProductsCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_OnGetAllProductsCopyWith<$Res> {
  __$$_OnGetAllProductsCopyWithImpl(
      _$_OnGetAllProducts _value, $Res Function(_$_OnGetAllProducts) _then)
      : super(_value, (v) => _then(v as _$_OnGetAllProducts));

  @override
  _$_OnGetAllProducts get _value => super._value as _$_OnGetAllProducts;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_OnGetAllProducts(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetAllProducts implements _OnGetAllProducts {
  const _$_OnGetAllProducts(final List<ProductDataModel> list) : _list = list;

  final List<ProductDataModel> _list;
  @override
  List<ProductDataModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SaleState.onGetAllProducts(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetAllProducts &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetAllProductsCopyWith<_$_OnGetAllProducts> get copyWith =>
      __$$_OnGetAllProductsCopyWithImpl<_$_OnGetAllProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return onGetAllProducts(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return onGetAllProducts?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
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
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return onGetAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return onGetAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onGetAllProducts != null) {
      return onGetAllProducts(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllProducts implements SaleState {
  const factory _OnGetAllProducts(final List<ProductDataModel> list) =
      _$_OnGetAllProducts;

  List<ProductDataModel> get list;
  @JsonKey(ignore: true)
  _$$_OnGetAllProductsCopyWith<_$_OnGetAllProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetSaleDetailCopyWith<$Res> {
  factory _$$_OnGetSaleDetailCopyWith(
          _$_OnGetSaleDetail value, $Res Function(_$_OnGetSaleDetail) then) =
      __$$_OnGetSaleDetailCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$_OnGetSaleDetailCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_OnGetSaleDetailCopyWith<$Res> {
  __$$_OnGetSaleDetailCopyWithImpl(
      _$_OnGetSaleDetail _value, $Res Function(_$_OnGetSaleDetail) _then)
      : super(_value, (v) => _then(v as _$_OnGetSaleDetail));

  @override
  _$_OnGetSaleDetail get _value => super._value as _$_OnGetSaleDetail;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_OnGetSaleDetail(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnGetSaleDetail implements _OnGetSaleDetail {
  const _$_OnGetSaleDetail(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SaleState.onGetSaleDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetSaleDetail &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetSaleDetailCopyWith<_$_OnGetSaleDetail> get copyWith =>
      __$$_OnGetSaleDetailCopyWithImpl<_$_OnGetSaleDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return onGetSaleDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return onGetSaleDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onGetSaleDetail != null) {
      return onGetSaleDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return onGetSaleDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return onGetSaleDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onGetSaleDetail != null) {
      return onGetSaleDetail(this);
    }
    return orElse();
  }
}

abstract class _OnGetSaleDetail implements SaleState {
  const factory _OnGetSaleDetail(final String id) = _$_OnGetSaleDetail;

  String get id;
  @JsonKey(ignore: true)
  _$$_OnGetSaleDetailCopyWith<_$_OnGetSaleDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetCustomerDiscountCopyWith<$Res> {
  factory _$$_OnGetCustomerDiscountCopyWith(_$_OnGetCustomerDiscount value,
          $Res Function(_$_OnGetCustomerDiscount) then) =
      __$$_OnGetCustomerDiscountCopyWithImpl<$Res>;
  $Res call({List<DiscountDataModel> list});
}

/// @nodoc
class __$$_OnGetCustomerDiscountCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_OnGetCustomerDiscountCopyWith<$Res> {
  __$$_OnGetCustomerDiscountCopyWithImpl(_$_OnGetCustomerDiscount _value,
      $Res Function(_$_OnGetCustomerDiscount) _then)
      : super(_value, (v) => _then(v as _$_OnGetCustomerDiscount));

  @override
  _$_OnGetCustomerDiscount get _value =>
      super._value as _$_OnGetCustomerDiscount;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_OnGetCustomerDiscount(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DiscountDataModel>,
    ));
  }
}

/// @nodoc

class _$_OnGetCustomerDiscount implements _OnGetCustomerDiscount {
  const _$_OnGetCustomerDiscount(final List<DiscountDataModel> list)
      : _list = list;

  final List<DiscountDataModel> _list;
  @override
  List<DiscountDataModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SaleState.onGetCustomerDiscount(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetCustomerDiscount &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetCustomerDiscountCopyWith<_$_OnGetCustomerDiscount> get copyWith =>
      __$$_OnGetCustomerDiscountCopyWithImpl<_$_OnGetCustomerDiscount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return onGetCustomerDiscount(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return onGetCustomerDiscount?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onGetCustomerDiscount != null) {
      return onGetCustomerDiscount(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return onGetCustomerDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return onGetCustomerDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onGetCustomerDiscount != null) {
      return onGetCustomerDiscount(this);
    }
    return orElse();
  }
}

abstract class _OnGetCustomerDiscount implements SaleState {
  const factory _OnGetCustomerDiscount(final List<DiscountDataModel> list) =
      _$_OnGetCustomerDiscount;

  List<DiscountDataModel> get list;
  @JsonKey(ignore: true)
  _$$_OnGetCustomerDiscountCopyWith<_$_OnGetCustomerDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetCustomerCopyWith<$Res> {
  factory _$$_OnGetCustomerCopyWith(
          _$_OnGetCustomer value, $Res Function(_$_OnGetCustomer) then) =
      __$$_OnGetCustomerCopyWithImpl<$Res>;
  $Res call({List<CustomerDataModel>? list});
}

/// @nodoc
class __$$_OnGetCustomerCopyWithImpl<$Res> extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_OnGetCustomerCopyWith<$Res> {
  __$$_OnGetCustomerCopyWithImpl(
      _$_OnGetCustomer _value, $Res Function(_$_OnGetCustomer) _then)
      : super(_value, (v) => _then(v as _$_OnGetCustomer));

  @override
  _$_OnGetCustomer get _value => super._value as _$_OnGetCustomer;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_OnGetCustomer(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CustomerDataModel>?,
    ));
  }
}

/// @nodoc

class _$_OnGetCustomer implements _OnGetCustomer {
  const _$_OnGetCustomer(final List<CustomerDataModel>? list) : _list = list;

  final List<CustomerDataModel>? _list;
  @override
  List<CustomerDataModel>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaleState.onGetCustomer(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetCustomer &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_OnGetCustomerCopyWith<_$_OnGetCustomer> get copyWith =>
      __$$_OnGetCustomerCopyWithImpl<_$_OnGetCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return onGetCustomer(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return onGetCustomer?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
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
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return onGetCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return onGetCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onGetCustomer != null) {
      return onGetCustomer(this);
    }
    return orElse();
  }
}

abstract class _OnGetCustomer implements SaleState {
  const factory _OnGetCustomer(final List<CustomerDataModel>? list) =
      _$_OnGetCustomer;

  List<CustomerDataModel>? get list;
  @JsonKey(ignore: true)
  _$$_OnGetCustomerCopyWith<_$_OnGetCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnCreateTransactionSuccessCopyWith<$Res> {
  factory _$$_OnCreateTransactionSuccessCopyWith(
          _$_OnCreateTransactionSuccess value,
          $Res Function(_$_OnCreateTransactionSuccess) then) =
      __$$_OnCreateTransactionSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_OnCreateTransactionSuccessCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_OnCreateTransactionSuccessCopyWith<$Res> {
  __$$_OnCreateTransactionSuccessCopyWithImpl(
      _$_OnCreateTransactionSuccess _value,
      $Res Function(_$_OnCreateTransactionSuccess) _then)
      : super(_value, (v) => _then(v as _$_OnCreateTransactionSuccess));

  @override
  _$_OnCreateTransactionSuccess get _value =>
      super._value as _$_OnCreateTransactionSuccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_OnCreateTransactionSuccess(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnCreateTransactionSuccess implements _OnCreateTransactionSuccess {
  const _$_OnCreateTransactionSuccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SaleState.onCreateTransactionSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCreateTransactionSuccess &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_OnCreateTransactionSuccessCopyWith<_$_OnCreateTransactionSuccess>
      get copyWith => __$$_OnCreateTransactionSuccessCopyWithImpl<
          _$_OnCreateTransactionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return onCreateTransactionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return onCreateTransactionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onCreateTransactionSuccess != null) {
      return onCreateTransactionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return onCreateTransactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return onCreateTransactionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onCreateTransactionSuccess != null) {
      return onCreateTransactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnCreateTransactionSuccess implements SaleState {
  const factory _OnCreateTransactionSuccess(final String message) =
      _$_OnCreateTransactionSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$_OnCreateTransactionSuccessCopyWith<_$_OnCreateTransactionSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnConfirmPaymentSuccessCopyWith<$Res> {
  factory _$$_OnConfirmPaymentSuccessCopyWith(_$_OnConfirmPaymentSuccess value,
          $Res Function(_$_OnConfirmPaymentSuccess) then) =
      __$$_OnConfirmPaymentSuccessCopyWithImpl<$Res>;
  $Res call({String saleData});
}

/// @nodoc
class __$$_OnConfirmPaymentSuccessCopyWithImpl<$Res>
    extends _$SaleStateCopyWithImpl<$Res>
    implements _$$_OnConfirmPaymentSuccessCopyWith<$Res> {
  __$$_OnConfirmPaymentSuccessCopyWithImpl(_$_OnConfirmPaymentSuccess _value,
      $Res Function(_$_OnConfirmPaymentSuccess) _then)
      : super(_value, (v) => _then(v as _$_OnConfirmPaymentSuccess));

  @override
  _$_OnConfirmPaymentSuccess get _value =>
      super._value as _$_OnConfirmPaymentSuccess;

  @override
  $Res call({
    Object? saleData = freezed,
  }) {
    return _then(_$_OnConfirmPaymentSuccess(
      saleData == freezed
          ? _value.saleData
          : saleData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnConfirmPaymentSuccess implements _OnConfirmPaymentSuccess {
  const _$_OnConfirmPaymentSuccess(this.saleData);

  @override
  final String saleData;

  @override
  String toString() {
    return 'SaleState.onConfirmPaymentSuccess(saleData: $saleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnConfirmPaymentSuccess &&
            const DeepCollectionEquality().equals(other.saleData, saleData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(saleData));

  @JsonKey(ignore: true)
  @override
  _$$_OnConfirmPaymentSuccessCopyWith<_$_OnConfirmPaymentSuccess>
      get copyWith =>
          __$$_OnConfirmPaymentSuccessCopyWithImpl<_$_OnConfirmPaymentSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function() isLoadingDiscount,
    required TResult Function(String error) isError,
    required TResult Function(List<ProductDataModel> list) onGetAllProducts,
    required TResult Function(String id) onGetSaleDetail,
    required TResult Function(List<DiscountDataModel> list)
        onGetCustomerDiscount,
    required TResult Function(List<CustomerDataModel>? list) onGetCustomer,
    required TResult Function(String message) onCreateTransactionSuccess,
    required TResult Function(String saleData) onConfirmPaymentSuccess,
  }) {
    return onConfirmPaymentSuccess(saleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
  }) {
    return onConfirmPaymentSuccess?.call(saleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function()? isLoadingDiscount,
    TResult Function(String error)? isError,
    TResult Function(List<ProductDataModel> list)? onGetAllProducts,
    TResult Function(String id)? onGetSaleDetail,
    TResult Function(List<DiscountDataModel> list)? onGetCustomerDiscount,
    TResult Function(List<CustomerDataModel>? list)? onGetCustomer,
    TResult Function(String message)? onCreateTransactionSuccess,
    TResult Function(String saleData)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onConfirmPaymentSuccess != null) {
      return onConfirmPaymentSuccess(saleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoadingDiscount value) isLoadingDiscount,
    required TResult Function(_IsError value) isError,
    required TResult Function(_OnGetAllProducts value) onGetAllProducts,
    required TResult Function(_OnGetSaleDetail value) onGetSaleDetail,
    required TResult Function(_OnGetCustomerDiscount value)
        onGetCustomerDiscount,
    required TResult Function(_OnGetCustomer value) onGetCustomer,
    required TResult Function(_OnCreateTransactionSuccess value)
        onCreateTransactionSuccess,
    required TResult Function(_OnConfirmPaymentSuccess value)
        onConfirmPaymentSuccess,
  }) {
    return onConfirmPaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
  }) {
    return onConfirmPaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoadingDiscount value)? isLoadingDiscount,
    TResult Function(_IsError value)? isError,
    TResult Function(_OnGetAllProducts value)? onGetAllProducts,
    TResult Function(_OnGetSaleDetail value)? onGetSaleDetail,
    TResult Function(_OnGetCustomerDiscount value)? onGetCustomerDiscount,
    TResult Function(_OnGetCustomer value)? onGetCustomer,
    TResult Function(_OnCreateTransactionSuccess value)?
        onCreateTransactionSuccess,
    TResult Function(_OnConfirmPaymentSuccess value)? onConfirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (onConfirmPaymentSuccess != null) {
      return onConfirmPaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnConfirmPaymentSuccess implements SaleState {
  const factory _OnConfirmPaymentSuccess(final String saleData) =
      _$_OnConfirmPaymentSuccess;

  String get saleData;
  @JsonKey(ignore: true)
  _$$_OnConfirmPaymentSuccessCopyWith<_$_OnConfirmPaymentSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
