import 'package:appointment_app/core/theme/styles.dart';
import 'package:appointment_app/features/onBoarding/ui/widgets/DocImagesAndtitle.dart';
import 'package:appointment_app/features/onBoarding/ui/widgets/DocLogoAndText.dart';
import 'package:appointment_app/features/onBoarding/ui/widgets/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0).r,
            child: Column(
              children: [
                DocLogoAndText(),
                SizedBox(height: 30.h),
                DocImagesAndtitle(),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      const GetStartButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
