import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Routing/app_router.dart';
import 'package:h2m_destrib/core/Routing/routes.dart';
import 'package:h2m_destrib/core/Theming/colors.dart';

class H2mDestrib extends StatelessWidget {
  final AppRouter appRouter;
  const H2mDestrib({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'H2M Destrib',
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: ColorManager.whiteColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
