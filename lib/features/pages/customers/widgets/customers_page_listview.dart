import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/features/pages/customers/widgets/customers_page_item_card.dart';

import '../../../../core/Theming/styles.dart';

class CustomersPageListview extends StatelessWidget {
  const CustomersPageListview({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 10;
    return SizedBox(
        height: 450.h,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return index == itemCount - 1
                ? InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text('عرض المزيد',
                          style: TextStyles.font18mainGoldBold),
                    ),
                  )
                : const CustomersPageItemCard();
          },
        ));
  }
}
