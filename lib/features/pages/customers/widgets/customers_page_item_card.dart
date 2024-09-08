import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Theming/styles.dart';

class CustomersPageItemCard extends StatelessWidget {
  const CustomersPageItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 120.h,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Card(
                clipBehavior: Clip.antiAlias,
                semanticContainer: true,
                margin: const EdgeInsets.fromLTRB(20, 8, 0, 8),
                elevation: 2.0,
                color: const Color.fromARGB(255, 230, 199, 104),
                child: SizedBox(
                    width: 100,
                    height: 150,
                    child: Center(
                        child: Text(
                      'محمد عبد الرحمن محمد',
                      style: TextStyles.font14DarkRedBold,
                      textAlign: TextAlign.center,
                    )))),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('01090585287', style: TextStyles.font18mainGoldBold),
                  Text('0.00', style: TextStyles.font18mainGoldBold),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
