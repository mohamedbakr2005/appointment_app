import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineSignInWith extends StatelessWidget {
  const LineSignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(color: AppColors.secondGray)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text("Or sign in with", style: TextStyles.font12GrayRegular),
        ),
        Expanded(child: Divider(color: AppColors.secondGray)),
      ],
    );
  }
}
