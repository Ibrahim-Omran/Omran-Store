import 'package:get_it/get_it.dart';
import 'package:omran_store/core/app/app_cubit/app_cubit.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  // cubit
  await _initCore();
}

Future<void> _initCore() async {
  sl.registerFactory(AppCubit.new);
}
