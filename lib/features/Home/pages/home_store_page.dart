import 'package:flutter/material.dart';

import '../../../core/helpers/spacing.dart';
import '../widgets/customers_listview.dart';
import '../widgets/customers_see_all.dart';
import '../widgets/homeTopBar.dart';
import '../widgets/homebanner.dart';
import '../widgets/items_listview.dart';
import '../widgets/items_see_all.dart';

class HomeStorePage extends StatelessWidget {
  const HomeStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTopBar(),
        spacingVertical(5),
        const HomeBanner(),
        spacingVertical(8),
        const CustomersSeeAll(),
        const CustomersListview(),
        const ItemsSeeAll(),
        const ItemsListview()
      ],
    );
  }
}
