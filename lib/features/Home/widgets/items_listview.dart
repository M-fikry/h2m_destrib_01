import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/features/Home/widgets/item_card.dart';

import '../../../core/Theming/styles.dart';

class ItemsListview extends StatelessWidget {
  const ItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 10;
    return SizedBox(
        height: 300.h,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            if ((index == itemCount - 1)) {
              return Center(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'عرض المزيد',
                    style: TextStyles.font18mainGoldBold,
                  ),
                ),
              ));
            } else {
              return const ItemCard();
            }
          },
        ));
  }
}
