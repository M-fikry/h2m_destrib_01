import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/features/pages/payments/widgets/payments_item_card.dart';

class PaymentsListview extends StatelessWidget {
  const PaymentsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.h,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const PaymentsItemCard();
          },
        ));
  }
}
