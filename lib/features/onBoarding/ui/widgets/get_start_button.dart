import 'package:appointment_app/core/helper/extensions.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.login); 
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primary),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text("Get Started", style: TextStyles.font16WhiteSemiBold),
    );
  }
}
