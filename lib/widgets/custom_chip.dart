import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      margin: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                ThemeMode.light
            ? Colors.white
            : Colors.black,
        borderRadius: BorderRadius.circular(7.r),
        border: Border.all(
            color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                    ThemeMode.light
                ? const Color(0xff3C3C43).withOpacity(0.18)
                : const Color(0xffFFFFFF).withOpacity(0.15),
            width: 2.w),
      ),
      child: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.5.w),
        child: Text(
          'IGTV',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                      ThemeMode.light
                  ? const Color(0xff262626)
                  : Colors.white),
        ),
      )),
    );
  }
}
