import 'dart:async';

import 'package:fuelflow/data/local/datasources/post/post_datasource.dart';
import 'package:fuelflow/data/network/apis/posts/post_api.dart';
import 'package:fuelflow/data/repository/post/post_repository_impl.dart';
import 'package:fuelflow/data/repository/setting/setting_repository_impl.dart';
import 'package:fuelflow/data/repository/user/user_repository_impl.dart';
import 'package:fuelflow/data/sharedpref/shared_preference_helper.dart';
import 'package:fuelflow/domain/repository/post/post_repository.dart';
import 'package:fuelflow/domain/repository/setting/setting_repository.dart';
import 'package:fuelflow/domain/repository/user/user_repository.dart';

import '../../../di/service_locator.dart';

mixin RepositoryModule {
  static Future<void> configureRepositoryModuleInjection() async {
    // repository:--------------------------------------------------------------
    getIt.registerSingleton<SettingRepository>(SettingRepositoryImpl(
      getIt<SharedPreferenceHelper>(),
    ));

    getIt.registerSingleton<UserRepository>(UserRepositoryImpl(
      getIt<SharedPreferenceHelper>(),
    ));

    getIt.registerSingleton<PostRepository>(PostRepositoryImpl(
      getIt<PostApi>(),
      getIt<PostDataSource>(),
    ));
  }
}
