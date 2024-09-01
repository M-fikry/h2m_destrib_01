import 'package:flutter/material.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';

class CustomerItemCard extends StatelessWidget {
  const CustomerItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        semanticContainer: true,
        margin: const EdgeInsets.fromLTRB(20, 8, 0, 8),
        color: const Color.fromARGB(255, 230, 199, 104),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'محمد على عبد الرحمن',
                style: TextStyles.font14DarkRedBold,
              ),
              Text('01090585287', style: TextStyles.font18mainGoldBold),
              Text('30000.75 ج.م', style: TextStyles.font14MainRedbold),
            ],
          ),
        ),
      ),
    );
  }
}
