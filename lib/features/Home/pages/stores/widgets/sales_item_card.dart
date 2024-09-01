import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/Theming/styles.dart';

class SalesItemCard extends StatelessWidget {
  const SalesItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 120.h,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            const Card(
                clipBehavior: Clip.antiAlias,
                semanticContainer: true,
                margin: EdgeInsets.fromLTRB(20, 8, 0, 8),
                elevation: 2.0,
                color: Color.fromARGB(255, 230, 199, 104),
                child: SizedBox(
                    width: 100,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('بطيخ'),
                      ],
                    ))),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('01090585287', style: TextStyles.font18mainGoldBold),
                  Text('H2M', style: TextStyles.font18mainGoldBold),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
