import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h2m_destrib/core/helpers/extensions.dart';
import 'package:h2m_destrib/features/login/data/models/login_response.dart';
import 'package:h2m_destrib/features/login/logic/cubit/login_cubit.dart';
import 'package:h2m_destrib/features/login/logic/cubit/login_state.dart';

import '../../../../core/Routing/routes.dart';

class LoginBlockListenner extends StatelessWidget {
  const LoginBlockListenner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()));
          },
          error: (error) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('خطأ فى تسجيل الدخول برجاء مراجعة البيانات'),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
