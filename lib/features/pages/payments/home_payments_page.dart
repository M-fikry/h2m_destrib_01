import 'package:flutter/material.dart';
import 'package:h2m_destrib/features/pages/payments/widgets/payment_filter_bar.dart';
import 'package:h2m_destrib/features/pages/payments/widgets/payment_top_bar.dart';
import 'package:h2m_destrib/features/pages/payments/widgets/payments_listview.dart';

import '../../../core/helpers/spacing.dart';
import '../../Home/widgets/homebanner.dart';

class HomePaymentsPage extends StatelessWidget {
  const HomePaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PaymentTopBar(),
        spacingVertical(5),
        const HomeBanner(currIndex: 2,),
        spacingVertical(8),
        const PaymentFilterBar(),
        spacingVertical(8),
        const PaymentsListview(),
      ],
    );
  }
}
