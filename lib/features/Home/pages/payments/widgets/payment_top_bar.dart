import 'package:flutter/material.dart';

import '../../../../../core/Theming/colors.dart';
import '../../../../../core/Theming/styles.dart';

class PaymentTopBar extends StatelessWidget {
  const PaymentTopBar({super.key});

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
              'حركة التحصيل',
              style: TextStyles.font18white,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.add,
              color: ColorManager.mainRed,
            ),
          ),
        )
      ],
    );
  }
}
