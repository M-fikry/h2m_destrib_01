import 'package:flutter/material.dart';
import 'package:h2m_destrib/features/Home/pages/stores/widgets/sales_filter_bar.dart';
import 'package:h2m_destrib/features/Home/pages/stores/widgets/sales_listview.dart';
import 'package:h2m_destrib/features/Home/pages/stores/widgets/sales_top_bar.dart';

import '../../../../core/helpers/spacing.dart';
import '../../widgets/homebanner.dart';

class HomeStorePage extends StatelessWidget {
  const HomeStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SalesTopBar(),
        spacingVertical(5),
        const HomeBanner(),
        spacingVertical(8),
        const SalesFilterBar(),
        spacingVertical(8),
        const SalesListview(),
      ],
    );
  }
}
