import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/services/providers/theme_state.dart';
import 'package:provider/provider.dart';

import '../utils/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(
      builder: (context, themeState, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Divider(
                height: 2,
                thickness: 2,
                color:
                    Provider.of<ThemeState>(context, listen: false).appTheme ==
                            ThemeMode.light
                        ? kLightForm.withOpacity(0.3)
                        : kDarkForm.withOpacity(0.3)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              'or',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 20.sp),
            ),
          ),
          Expanded(
            child: Divider(
                height: 2,
                thickness: 2,
                color:
                    Provider.of<ThemeState>(context, listen: false).appTheme ==
                            ThemeMode.light
                        ? kLightForm.withOpacity(0.3)
                        : kDarkForm.withOpacity(0.3)),
          ),
        ],
      ),
    );
  }
}
