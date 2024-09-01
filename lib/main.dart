import 'package:flutter/material.dart';
import 'package:h2m_destrib/core/Debendncy%20injection/debendncy_injection.dart';
import 'package:h2m_destrib/core/Routing/app_router.dart';
import 'package:h2m_destrib/h2m_destrib_app.dart';

void main() async{
  await getItInit();
  runApp(H2mDestrib(
    appRouter: AppRouter(),
  ));
}
