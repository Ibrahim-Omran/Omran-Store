import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omran_store/core/app/connectivity_controller.dart';
import 'package:omran_store/core/app/env.variables.dart';
import 'package:omran_store/core/common/screens/no_network_screen.dart';
import 'package:omran_store/core/routes/app_routes.dart';
import 'package:omran_store/core/style/theme/app_theme.dart';


class OmranStoreApp extends StatelessWidget {
  const OmranStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              title: 'Store App',
              theme: themeLight(),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoutes,
              initialRoute: AppRoutes.testOne,
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
