import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';
import 'package:h2m_destrib/feature/onboarding/widgets/destrib_logo_and_name.dart';
import 'package:h2m_destrib/feature/onboarding/widgets/get_started_button.dart';
import 'package:h2m_destrib/feature/onboarding/widgets/person_image_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
          top: 10.h,
          bottom: 20.h,
        ),
        child: Column(
          children: [
            const DestribLogoAndName(),
            const PersonImageAndtext(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text:
                            'لطلب السخة الخاصة بشركتكم برجاء الاتصال على خدمة المبيعات ',
                        children: [
                          TextSpan(
                              text: '01090585287',
                              style: TextStyles.font18mainRed),
                        ],
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
