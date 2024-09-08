import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';
import 'package:h2m_destrib/core/helpers/spacing.dart';
import 'package:h2m_destrib/core/wedgits/app_text_button.dart';
import 'package:h2m_destrib/features/login/UI/widgets/login_block_listenner.dart';
import 'package:h2m_destrib/features/login/UI/widgets/username_and_password.dart';
import 'package:h2m_destrib/features/login/data/models/login_request_body.dart';

import '../../../core/networking/api_constants.dart';
import '../logic/cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                spacingVertical(50),
                Text(
                  'تسجيل الدخول',
                  style: TextStyles.font32mainRedBold,
                ),
                spacingVertical(8),
                Text(
                  'مرحبا بك',
                  style: TextStyles.font24mainRedBold,
                ),
                spacingVertical(8),
                Text(
                  'لإتمام عملية التسجيل بنجاح برجاء التواصل مع إدارة شركتك للحصول على بيانات التسجيل الخاصة بك.',
                  style: TextStyles.font14GreyRegular,
                  textAlign: TextAlign.center,
                ),
                spacingVertical(36),
                const Column(
                  children: [UsernameAndPassword()],
                ),
                spacingVertical(30),
                AppTextButton(
                    borderRadius: 20.r,
                    buttonText: 'تسجيل الدخول',
                    textStyle: TextStyles.font24white,
                    onPressed: () {
                      validateAndLogin(context);
                    }),
                const LoginBlockListenner(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      ApiConstants.apiBaseUrl = context.read<LoginCubit>().pathController.text;
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
            user_namee: context.read<LoginCubit>().usernameController.text,
            passwordText: context.read<LoginCubit>().passwordController.text,
          ));
    }
    //context.pushNamed(Routes.homeScreen);
  }
}
