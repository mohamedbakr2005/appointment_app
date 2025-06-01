import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/features/login/ui/widgets/dont_have_account.dart';
import 'package:appointment_app/features/signUp/ui/widgets/already_have_acc.dart';
import 'package:appointment_app/features/login/ui/widgets/line_sign_in_with.dart';
import 'package:appointment_app/features/login/ui/widgets/remember_forgot_password.dart';
import 'package:appointment_app/features/login/ui/widgets/sign_in_with.dart';
import 'package:appointment_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
                  Text("Welcome Back!", style: TextStyles.font24BlueBold),
                  verticalSpace(10),
                  Text(
                    "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                    style: TextStyles.font13GrayRegular,
                  ),
                  verticalSpace(35),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(hintText: "Email"),
                        verticalSpace(20),
                        AppTextFormField(
                          hintText: "Password",
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        verticalSpace(5),
                        RememberForgotPassword(),
                        verticalSpace(15),
                        AppTextButton(
                          buttonText: "Login",
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          textStyle: TextStyles.font16WhiteSemiBold,
                        ),
                        verticalSpace(20),
                        LineSignInWith(),
                        verticalSpace(30),
                        SignInWith(),
                        verticalSpace(30),
                        TermsAndConditionsText(),
                        verticalSpace(30),
                        DonTHaveAccount(),
                      ],
                    ),
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
