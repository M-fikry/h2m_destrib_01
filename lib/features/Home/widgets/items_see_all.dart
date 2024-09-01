import 'package:flutter/material.dart';

import '../../../core/Theming/styles.dart';

class ItemsSeeAll extends StatelessWidget {
  const ItemsSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'الأصناف الأكثر مبيعاً',
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
