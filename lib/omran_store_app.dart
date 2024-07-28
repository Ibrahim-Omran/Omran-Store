import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omran_store/core/app/app_cubit/app_cubit.dart';
import 'package:omran_store/core/app/connectivity_controller.dart';
import 'package:omran_store/core/app/env.variables.dart';
import 'package:omran_store/core/common/screens/no_network_screen.dart';
import 'package:omran_store/core/di/injection_container.dart';
import 'package:omran_store/core/language/app_localizations_setup.dart';
import 'package:omran_store/core/routes/app_routes.dart';
import 'package:omran_store/core/service/shared_pref/pref_keys.dart';
import 'package:omran_store/core/service/shared_pref/shared_pref.dart';
import 'package:omran_store/core/style/theme/app_theme.dart';

class OmranStoreApp extends StatelessWidget {
  const OmranStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) =>
            sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(
                  PrefKeys.themeMode,
                ),
              )..getSaveLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous,current){
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                    title: 'Store App',
                    theme: cubit.isDark ? themeLight() : themeDark(),
                    locale: Locale(cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                    onGenerateRoute: AppRoutes.onGenerateRoutes,
                    initialRoute: AppRoutes.login,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'No Network',
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
