import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';
import 'package:h2m_destrib/features/Home/pages/nav_class.dart';

import '../../../core/helpers/spacing.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              width: double.infinity.w,
              height: 165.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/homeBanner.jpg'),
                    fit: BoxFit.fill,
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'H2M دائما فى خدمتكم',
                      style: TextStyles.font14MainRedbold,
                    ),
                    Text(
                      'للدعم الفنى أو الشكاوى و \nالمقترحات تواصل معنا',
                      style: TextStyles.font12WhiteRegular,
                    ),
                    spacingVertical(6),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 2.5,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 0.h,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            '01090585287',
                            style: TextStyles.font18mainRedBold,
                          )),
                    )
                  ])),
          Positioned(
              left: 5.w,
              top: NavClass.currIndex == 0 ? -60.h : -15.h,
              child: Image.asset(
                NavClass.currIndex == 2
                    ? 'assets/images/moneyCollect.png'
                    : NavClass.currIndex == 1
                        ? 'assets/images/person.png'
                        : 'assets/images/storeLoading.png',
                fit: BoxFit.fill,
                height: NavClass.currIndex == 0 ? 265.h : 220.h,
                width: NavClass.currIndex == 2 ? 180.w : 160.w,
              ))
        ],
      ),
    );
  }
}
