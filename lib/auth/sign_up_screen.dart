import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Provider.of<ThemeState>(context, listen: false).appTheme ==
                        ThemeMode.light
                    ? instagramLight
                    : instagramDark,
                height: 49.h,
                width: 182.w,
              ),
              const SizedBox(
                height: 39,
              ),
              SizedBox(
                height: 48.h,
                child: const CustomTextField(
                  hintText: 'email',
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 48.h,
                child: const CustomTextField(
                  hintText: 'username',
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 48.h,
                child: const CustomTextField(
                  hintText: 'password',
                  obscure: true,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              SizedBox(
                height: 44.h,
                width: double.infinity,
                child: CustomElevatedButton(
                  onTap: () {
                    Provider.of<ThemeState>(context, listen: false)
                        .changeTheme();
                  },
                  hintText: 'Sign up',
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook_sharp,
                    color: kPrimaryUtils,
                    size: 24.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Sign up with Facebook',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: kPrimaryUtils),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              const CustomDivider(),
              SizedBox(
                height: 35.h,
              ),
              RichText(
                text: TextSpan(
                    text: 'have an account?',
                    children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                          text: 'Log in.',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: kPrimaryUtils)),
                    ],
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
