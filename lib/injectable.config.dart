// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i10;
import 'application/sale/sale_cubit.dart' as _i9;
import 'domain/i_auth.dart' as _i5;
import 'domain/sale/i_sale.dart' as _i7;
import 'infrastructure/auth/auth_repository.dart' as _i6;
import 'infrastructure/core/dio_module.dart' as _i11;
import 'infrastructure/core/storage_module.dart' as _i12;
import 'infrastructure/sale/sale_repository.dart' as _i8;
import 'infrastructure/storage/storage.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final storageModule = _$StorageModule();
  gh.singleton<_i3.Dio>(dioModule.dio);
  gh.singleton<_i4.PrefStorage>(storageModule.dio);
  gh.lazySingleton<_i5.IAuth>(
      () => _i6.AuthRepository(get<_i3.Dio>(), get<_i4.PrefStorage>()));
  gh.lazySingleton<_i7.ISale>(
      () => _i8.SaleRepository(get<_i3.Dio>(), get<_i4.PrefStorage>()));
  gh.factory<_i9.SaleCubit>(() => _i9.SaleCubit(get<_i7.ISale>()));
  gh.factory<_i10.AuthCubit>(() => _i10.AuthCubit(get<_i5.IAuth>()));
  return get;
}

class _$DioModule extends _i11.DioModule {}

class _$StorageModule extends _i12.StorageModule {}
