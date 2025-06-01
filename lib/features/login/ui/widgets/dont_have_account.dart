import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DonTHaveAccount extends StatelessWidget {
  const DonTHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/signUp'),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(text: ' Sign Up', style: TextStyles.font13BlueSemiBold),
          ],
        ),
      ),
    );
  }
}
