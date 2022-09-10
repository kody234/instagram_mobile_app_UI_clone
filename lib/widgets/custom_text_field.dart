import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';
import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.obscure,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final bool? obscure;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscure ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
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
