import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/i_auth.dart';
import 'package:pos/domain/location/location_data_model.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(const AuthState.initial());
  IAuth iAuth;
  void getLocationList() async {
    emit(const AuthState.onLoading());
    try {
      final _data = await iAuth.getLocationsList();
      _data.fold(
        (l) => emit(AuthState.onError(l.toString())),
        (r) {
          // final _currList = <LocationDataModel>[];

          // for (var element in r) {
          //   if (_currList.isEmpty) {
          //     _currList.add(element);
          //   }
          //   try {
          //     _currList.firstWhere(
          //         (val) => val.locationCode == element.locationCode);
          //   } catch (e) {
          //     _currList.add(element);
          //   }
          // }

          // _currList.removeWhere((element) => element.locationCode == 'null');
          emit(AuthState.onGetLocation(r));
        },
      );
    } catch (e) {
      emit(AuthState.onError(e.toString()));
    }
  }

  void validateLocation() async {
    emit(const AuthState.onLoading());
    try {
      final _data = await iAuth.validateLocation();
      _data.fold(
        (l) => emit(AuthState.onError(l.toString())),
        (r) {
          emit(AuthState.onValidateLocation(r));
        },
      );
    } catch (e) {
      emit(AuthState.onError(e.toString()));
    }
  }

  void authenticateUser() async {
    emit(const AuthState.onLoading());
    try {
      final _data = await iAuth.authentication();
      _data.fold(
        (l) => emit(AuthState.onError(l.toString())),
        (r) {
          emit(AuthState.onAuthenticate(r));
        },
      );
    } catch (e) {
      emit(AuthState.onError(e.toString()));
    }
  }
}
