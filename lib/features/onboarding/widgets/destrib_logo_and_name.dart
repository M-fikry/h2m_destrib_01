import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestribLogoAndName extends StatelessWidget {
  const DestribLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage('assets/images/hazemLogo.png'),
          height: 180.h, width: 200.w,
          fit: BoxFit.fill,
          //opacity: AlwaysStoppedAnimation(.5),
        ),
      ],
    );
  }
}
