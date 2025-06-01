import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/styles.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/features/fillProfileUser/ui/widgets/profile_avatar_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillProfileScreen extends StatefulWidget {
  const FillProfileScreen({Key? key}) : super(key: key);

  @override
  State<FillProfileScreen> createState() => _FillProfileScreenState();
}

class _FillProfileScreenState extends State<FillProfileScreen> {
  final formKey = GlobalKey<FormState>();
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
                vertical: 50.0.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fill Your Profile", style: TextStyles.font24BlueBold),
                  verticalSpace(10),
                  Text(
                    "Please take a few minutes to fill out your profile\nwith as much detail as possible.",
                    style: TextStyles.font13GrayRegular,
                  ),
                  verticalSpace(35),
                  Center(
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: ProfileAvatar(),
                    ),
                  ),
                  verticalSpace(20),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(hintText: "Full Name"),
                        verticalSpace(20),
                        AppTextFormField(hintText: "Email"),
                        verticalSpace(20),
                        AppTextFormField(hintText: "Phone Number"),
                        verticalSpace(20),
                        AppTextFormField(hintText: "Address"),
                        verticalSpace(20),
                        AppTextFormField(hintText: "Bio"),
                        verticalSpace(20),
                        AppTextButton(
                          buttonText: "Submit",
                          textStyle: TextStyles.font16WhiteMedium,
                          onPressed: () {},
                        ),
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
