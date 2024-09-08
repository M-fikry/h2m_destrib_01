import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:h2m_destrib/core/networking/api_service.dart';
import 'package:h2m_destrib/core/networking/dio_factory.dart';
import 'package:h2m_destrib/features/login/data/repos/login_repo.dart';
import 'package:h2m_destrib/features/login/logic/cubit/login_cubit.dart';

import '../../features/login/data/repos/representative_repo.dart';

final getIt = GetIt.instance;

Future<void> getItInit() async {
  // dio and ApiService
  Dio dio = await DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login repo
  getIt.registerLazySingleton<LoginRepo>(
      () => LoginRepo(getIt.get<ApiService>()));
  getIt.registerLazySingleton<RepresentativeRepo>(
      () => RepresentativeRepo(getIt.get<ApiService>()));
  getIt.registerLazySingleton<LoginCubit>(() =>
      LoginCubit(getIt.get<LoginRepo>(), getIt.get<RepresentativeRepo>()));
      
  // home repo
}
