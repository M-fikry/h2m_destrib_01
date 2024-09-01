import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/features/Home/pages/stores/widgets/sales_item_card.dart';

class SalesListview extends StatelessWidget {
  const SalesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.h,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const SalesItemCard();
          },
        ));
  }
}
