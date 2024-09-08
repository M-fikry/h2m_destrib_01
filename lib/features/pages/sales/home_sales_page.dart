import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h2m_destrib/features/login/logic/cubit/login_cubit.dart';

import '../../../core/helpers/spacing.dart';
import '../../Home/widgets/customers_listview.dart';
import '../../Home/widgets/customers_see_all.dart';
import '../../Home/widgets/homeTopBar.dart';
import '../../Home/widgets/homebanner.dart';
import '../../Home/widgets/items_listview.dart';
import '../../Home/widgets/items_see_all.dart';

class HomeSalesPage extends StatelessWidget {
  const HomeSalesPage({super.key});
  @override
  Widget build(BuildContext context) {
    //final String mandoubName = context.read<LoginCubit>().mandoubName ?? 'اسم المندوب';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTopBar(),
        spacingVertical(5),
        const HomeBanner(
          currIndex: 1,
        ),
        spacingVertical(8),
        const CustomersSeeAll(),
        const CustomersListview(),
        const ItemsSeeAll(),
        const ItemsListview()
      ],
    );
  }
}
