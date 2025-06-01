import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w,
                vertical: 90.0.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Forgot Password", style: TextStyles.font24BlueBold),
                  verticalSpace(10),
                  Text(
                    "At our app, we take the security of your\ninformation seriously.",
                    style: TextStyles.font13GrayRegular,
                  ),
                  verticalSpace(35),
                  Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      verticalSpace(30),
                      AppTextButton(
                        buttonText: "Login",
                        onPressed: () {},
                        textStyle: TextStyles.font16WhiteSemiBold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
