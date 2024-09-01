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
            Text(
              'الرئيسية',
              style: TextStyles.font18white,
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            child: Icon(
              Icons.add,
              color: ColorManager.mainRed,
            ),
          ),
        )
      ],
    );
  }
}
