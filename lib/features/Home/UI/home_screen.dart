import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/colors.dart';
import 'package:h2m_destrib/features/Home/pages/nav_class.dart';
import 'package:h2m_destrib/features/Home/widgets/customers_listview.dart';
import 'package:h2m_destrib/features/Home/widgets/items_listview.dart';
import 'package:h2m_destrib/features/Home/widgets/items_see_all.dart';

import '../../../core/Theming/styles.dart';
import '../../../core/helpers/spacing.dart';
import '../pages/home_payments_page.dart';
import '../pages/home_sales_page.dart';
import '../pages/home_store_page.dart';
import '../widgets/customers_see_all.dart';
import '../widgets/homeTopBar.dart';
import '../widgets/homebanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePaymentsPage(),
      const HomeSalesPage(),
      const HomeStorePage(),
    ];
    return Scaffold(
      backgroundColor: ColorManager.mainRed,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            width: double.infinity.w,
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
            child: screens[NavClass.currIndex]),
      )),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 12000),
        buttonBackgroundColor: ColorManager.mainGold,
        index: 1,
        onTap: (index) {
          setState(() {
            NavClass.currIndex = index;
          });
        },
        height: 70.h,
        color: ColorManager.mainGold,
        backgroundColor: Colors.transparent,
        items: const [
          Icon(
            Icons.fire_truck_outlined,
            size: 25.0,
            color: ColorManager.mainWhite,
          ),
          Icon(
            Icons.shopping_cart,
            size: 25.0,
            color: ColorManager.mainWhite,
          ),
          Icon(
            Icons.attach_money,
            size: 25.0,
            color: ColorManager.mainWhite,
          ),
        ],
      ),
    );
  }
}
