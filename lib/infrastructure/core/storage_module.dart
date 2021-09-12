import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/infrastructure/storage/storage.dart';

@module
abstract class StorageModule {
  @singleton
  PrefStorage get dio => PrefStorage();
}
