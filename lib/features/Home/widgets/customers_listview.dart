import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/features/Home/widgets/customer_item_card.dart';

class CustomersListview extends StatelessWidget {
  const CustomersListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity.w,
        height: 150.h,
        //margin: EdgeInsets.only(bottom: 20.h),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CustomerItemCard();
          },
        ));
  }
}
