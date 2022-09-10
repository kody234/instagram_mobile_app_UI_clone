import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/utils/images.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 23.r,
            backgroundColor:
                Provider.of<ThemeState>(context, listen: false).appTheme ==
                        ThemeMode.light
                    ? Colors.black
                    : Colors.white,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'Location',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          ImageIcon(
            const AssetImage(detailsIcon),
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}
