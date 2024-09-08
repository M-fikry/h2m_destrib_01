import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/Theming/colors.dart';
import '../../../../core/Theming/styles.dart';
import '../../../login/logic/cubit/login_cubit.dart';


class CustomersTopBar extends StatelessWidget {
  const CustomersTopBar({super.key});

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
              'بيانات العملاء',
              style: TextStyles.font18white,
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const CircleAvatar(
            child: Icon(
              Icons.arrow_forward,
              color: ColorManager.mainRed,
            ),
          ),
        )
      ],
    );
  }
}
