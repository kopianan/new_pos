part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.onLoading() = _OnLoading;
  const factory AuthState.onError(String errorMessage) = _OnError;
  const factory AuthState.onGetLocation(List<LocationDataModel> locations) =
      _OnGetLocation;
  const factory AuthState.onValidateLocation(List<String> location) =
      _OnValidateLocation;
  const factory AuthState.onGetPaymentTerm(List<PaymentTerm> paymentTermList) =
      _OnGetPaymentTerm;
  const factory AuthState.onGetPaymentType(List<PaymentType> paymentTypeList) =
      _OnGetPaymentType;
  const factory AuthState.onAuthenticate(LocationDataModel user) =
      _OnAuthenticate;
}
