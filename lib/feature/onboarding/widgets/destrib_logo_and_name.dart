import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:h2m_destrib/core/Theming/styles.dart';

class DestribLogoAndName extends StatelessWidget {
  const DestribLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image(
          image: const AssetImage('assets/images/hazemLogo.png'),
          height: 180.h, width: 150.w,
          fit: BoxFit.fill,
          //opacity: AlwaysStoppedAnimation(.5),
        ),
      ],
    );
  }
}
