import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class RememberForgotPassword extends StatefulWidget {
  RememberForgotPassword({Key? key}) : super(key: key);

  @override
  State<RememberForgotPassword> createState() => _RememberForgotPasswordState();
}

class _RememberForgotPasswordState extends State<RememberForgotPassword> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  checkBox = !checkBox;
                });
              },
              icon: Icon(
                checkBox ? Icons.check_box : Icons.check_box_outline_blank,
                color: AppColors.gray,
              ),
            ),
            Text("Remember Me", style: TextStyles.font13GrayRegular),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/forgotPassword');
          },
          child: Text("Forgot Password?", style: TextStyles.font13BlueRegular),
        ),
      ],
    );
  }
}
