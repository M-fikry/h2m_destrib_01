import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Routing/routes.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';
import 'package:h2m_destrib/core/helpers/extensions.dart';
import 'package:h2m_destrib/core/helpers/spacing.dart';
import 'package:h2m_destrib/core/wedgits/app_form_text_field.dart';
import 'package:h2m_destrib/core/wedgits/app_text_button.dart';
import 'package:h2m_destrib/feature/onboarding/widgets/get_started_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FormKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
                  'لإتمام عملية التسجيل بنجاح برجاء التواصل مع إدارة شركتك للحصول على بيانات التسجيل الخاصة بك',
                  style: TextStyles.font14GreyRegular,
                ),
                spacingVertical(36),
                Form(
                    key: FormKey,
                    child: Column(
                      children: [
                        const AppFormTextField(
                          suffixIcon: Icon(Icons.cloud_circle_outlined),
                          hintText: 'مسار الاتصال',
                        ),
                        spacingVertical(16),
                        const AppFormTextField(
                          suffixIcon: Icon(Icons.person_outline),
                          hintText: 'إسم المستخدم',
                        ),
                        spacingVertical(16),
                        AppFormTextField(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          hintText: 'كلمة المرور',
                          isObscureText: isObscureText,
                        )
                      ],
                    )),
                spacingVertical(30),
                AppTextButton(
                    borderRadius: 20.r,
                    buttonText: 'تسجيل الدخول',
                    textStyle: TextStyles.font24white,
                    onPressed: () {
                      context.pushNamed(Routes.homeScreen);
                    })
              ],
            ),
          ),
        ),
      )),
    );
  }
}
