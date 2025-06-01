import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/features/signUp/ui/widgets/already_have_acc.dart';
import 'package:appointment_app/features/login/ui/widgets/line_sign_in_with.dart';
import 'package:appointment_app/features/login/ui/widgets/sign_in_with.dart';
import 'package:appointment_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  Text("Create Account", style: TextStyles.font24BlueBold),
                  verticalSpace(10),
                  Text(
                    "Sign up now and start exploring all that our\napp has to offer. We're excited to welcome\nyou to our community!",
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
                        verticalSpace(20),
                        AppTextFormField(hintText: "Your Number"),
                        verticalSpace(25),
                        AppTextButton(
                          buttonText: "Create Account",
                          onPressed: () {
                            Navigator.pushNamed(context, '/fillProfile');
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
                        AlreadyHaveAccountText(),
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
