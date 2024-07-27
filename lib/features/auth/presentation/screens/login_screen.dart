import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omran_store/core/extensions/context_extensions.dart';
import 'package:omran_store/features/auth/presentation/refactors/auth_custom_painter.dart';

import 'package:omran_store/features/auth/presentation/refactors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthCustomPainter(gradient: LinearGradient(
          colors: [
            context.color.bluePinkLight!,
            context.color.bluePinkLight!,
            context.color.bluePinkLight!,
            context.color.bluePinkDark!,
          ]
        ),),
      ),
      body: const SafeArea(
        bottom: false,
          child: LoginBody(),
      ),
    );
  }
}
