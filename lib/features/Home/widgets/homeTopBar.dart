import 'package:flutter/material.dart';
import 'package:h2m_destrib/features/Home/pages/nav_class.dart';

import '../../../core/Theming/colors.dart';
import '../../../core/Theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحبا Admin',
              style: TextStyles.font24white,
            ),
            NavClass.currIndex == 0
                ? Text(
                    'حركة المخزون',
                    style: TextStyles.font18white,
                  )
                : NavClass.currIndex == 1
                    ? Text(
                        'الرئيسية',
                        style: TextStyles.font18white,
                      )
                    : Text(
                        'حركة التحصيل',
                        style: TextStyles.font18white,
                      ),
          ],
        ),
        const Spacer(),
        const CircleAvatar(
          child: Icon(
            Icons.notifications,
            color: ColorManager.mainRed,
          ),
        )
      ],
    );
  }
}
