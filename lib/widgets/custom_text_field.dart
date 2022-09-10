import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';
import '../utils/colors.dart';
import '../utils/images.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.obscure,
    this.validator,
    this.icon,
  }) : super(key: key);
  final String hintText;
  final bool? obscure;
  final String? Function(String?)? validator;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscure ?? false,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                  ThemeMode.light
              ? const Color(0xff3C3C43).withOpacity(0.6)
              : const Color(0xff8E8E93),
          size: 25.sp,
        ),
        isDense: true,
        hintText: hintText,
        hintStyle:
            Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 18.sp),
        filled: true,
        fillColor: Provider.of<ThemeState>(context, listen: false).appTheme ==
                ThemeMode.light
            ? kLightForm.withOpacity(0.1)
            : kDarkForm.withOpacity(0.3),
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
