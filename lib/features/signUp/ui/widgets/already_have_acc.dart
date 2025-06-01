import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/login'),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account?',
              style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(text: ' Login', style: TextStyles.font13BlueSemiBold),
          ],
        ),
      ),
    );
  }
}
