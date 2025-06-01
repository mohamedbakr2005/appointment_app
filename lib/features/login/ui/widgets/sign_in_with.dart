import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/google.png", height: 40.h, width: 40.w),
        Image.asset("assets/images/facebook.png", height: 40.h, width: 40.w),
        Image.asset("assets/images/apple-logo.png", height: 40.h, width: 40.w),
      ],
    );
  }
}
