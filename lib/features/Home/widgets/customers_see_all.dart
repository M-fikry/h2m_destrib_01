import 'package:flutter/material.dart';

import '../../../core/Theming/styles.dart';

class CustomersSeeAll extends StatelessWidget {
  const CustomersSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'مديونية العملاء',
          style: TextStyles.font18white,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'عرض الكل',
              style: TextStyles.font18mainGoldBold,
            ))
      ],
    );
  }
}
