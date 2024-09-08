import 'package:flutter/material.dart';
import 'package:h2m_destrib/core/helpers/extensions.dart';

import '../../../core/Routing/routes.dart';
import '../../../core/Theming/styles.dart';

class CustomersSeeAll extends StatelessWidget {
  const CustomersSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'العملاء',
          style: TextStyles.font18white,
        ),
        TextButton(
            onPressed: () {
              context.pushNamed(Routes.customersScreen);
            },
            child: Text(
              'عرض الكل',
              style: TextStyles.font18mainGoldBold,
            ))
      ],
    );
  }
}
