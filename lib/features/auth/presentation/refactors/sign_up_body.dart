import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omran_store/core/common/animations/animate_do.dart';
import 'package:omran_store/core/common/widgets/text_app.dart';
import 'package:omran_store/core/extensions/context_extensions.dart';
import 'package:omran_store/core/language/lang_keys.dart';
import 'package:omran_store/core/routes/app_routes.dart';
import 'package:omran_store/core/style/fonts/font_weight_helper.dart';
import 'package:omran_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:omran_store/features/auth/presentation/widgets/dark_and_lang_buttons.dart';

import 'package:omran_store/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:omran_store/features/auth/presentation/widgets/sign_up/sign_up_text_form.dart';
import 'package:omran_store/features/auth/presentation/widgets/sign_up/user_avatar_image.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Dark Mode And Language
            const DarkAndLangButtons(),

            SizedBox(
              height: 20.h,
            ),

            // Welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),

            SizedBox(
              height: 10.h,
            ),

            // User Avatar Image
            const UserAvatarImage(),

            SizedBox(
              height: 20.h,
            ),

            // SignUp TextForm
            const SignUpTextForm(),

            SizedBox(
              height: 20.h,
            ),

            // SignUp Button
            const SignUpButton(),

            SizedBox(
              height: 20.h,
            ),

            // Go To login Screen
            CustomFadeInDown(
                duration: 400,
                child: TextButton(
                  onPressed: (){
                    context.pushReplacementNamed(AppRoutes.login);
                  },
                  child: TextApp(
                    text: context.translate(LangKeys.youHaveAccount),
                    theme: context.textStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.bluePinkLight,
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}