import 'package:appointment_app/core/helper/images.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogoAndText extends StatelessWidget {
  const DocLogoAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Images.logo),
        SizedBox(width: 10.w),
        Text("DocDoc", style: TextStyles.font24BlueBold),
      ],
    );
  }
}
