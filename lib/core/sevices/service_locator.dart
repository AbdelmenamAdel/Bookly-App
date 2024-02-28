import 'dart:async';

import 'package:bookly/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  sl.registerLazySingleton<HomeRepoImplementation>(
      () => HomeRepoImplementation(sl.get<ApiService>()));
  sl.registerLazySingleton<ApiService>(() => ApiService(Dio()));
}
