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
          'الأصناف المتاحة',
          style: TextStyles.font18white,
        )
      ],
    );
  }
}
