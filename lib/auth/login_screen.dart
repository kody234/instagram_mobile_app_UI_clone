import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/auth/sign_up_screen.dart';
import 'package:instagram_clone/services/providers/theme_state.dart';
import 'package:instagram_clone/utils/colors.dart';

import 'package:instagram_clone/utils/images.dart';

import 'package:provider/provider.dart';

import '../widgets/custom_divider.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  hintText: 'password',
                  obscure: true,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'forgot password?',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 44.h,
                width: double.infinity,
                child: CustomElevatedButton(
                  onTap: () {
                    Provider.of<ThemeState>(context, listen: false)
                        .changeTheme();
                  },
                  hintText: 'Log in',
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
                    'Log in with Facebook',
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
                    text: 'Don’t have an account?',
                    children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const SignUpScreen(),
                                ),
                              );
                            },
                          text: 'Sign up.',
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
