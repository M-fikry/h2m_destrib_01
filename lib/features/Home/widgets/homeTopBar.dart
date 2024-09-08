import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/Theming/colors.dart';
import '../../../core/Theming/styles.dart';
import '../../login/logic/cubit/login_cubit.dart';

class HomeTopBar extends StatefulWidget {
  const HomeTopBar({super.key});
  @override
  State<HomeTopBar> createState() => _HomeTopBarState();
}

class _HomeTopBarState extends State<HomeTopBar> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحبا ${context.read<LoginCubit>().mandoubName ?? 'اسم المندوب'}',
              style: TextStyles.font24white,
            ),
            Text(
              'الرئيسية',
              style: TextStyles.font18white,
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            child: Icon(
              Icons.add,
              color: ColorManager.mainRed,
            ),
          ),
        )
      ],
    );
  }

  Future<String> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = await prefs.getString('namemndob') ?? 'اسم المندوب';

    return name;
  }
}
