import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/colors.dart';
import '../../pages/payments/home_payments_page.dart';
import '../../pages/sales/home_sales_page.dart';
import '../../pages/stores/home_store_page.dart';

class HomeScreen extends StatefulWidget {
  static int currIndex = 1;
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeStorePage(),
      const HomeSalesPage(),
      const HomePaymentsPage(),
    ];
    return Scaffold(
      backgroundColor: ColorManager.mainRed,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            width: double.infinity.w,
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
            child: screens[HomeScreen.currIndex]),
      )),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 10000),
        buttonBackgroundColor: ColorManager.mainGold,
        index: 1,
        onTap: (index) {
          setState(() {
            HomeScreen.currIndex = index;
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
