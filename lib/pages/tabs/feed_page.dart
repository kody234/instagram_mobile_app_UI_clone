import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:instagram_clone/widgets/custom_image_slider.dart';
import 'package:provider/provider.dart';

import '../../services/providers/theme_state.dart';
import '../../utils/images.dart';
import '../../widgets/post_header_widget.dart';
import '../../widgets/post_widget.dart';
import '../../widgets/status_avatar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(17.sp),
          child: InkWell(
            onTap: () {
              Provider.of<ThemeState>(context, listen: false).changeTheme();
            },
            child: const ImageIcon(
              AssetImage(cameraIcon),
            ),
          ),
        ),
        title: Consumer<ThemeState>(
          builder: (context, themeState, child) => Image.asset(
            Provider.of<ThemeState>(context, listen: false).appTheme ==
                    ThemeMode.light
                ? instagramLight
                : instagramDark,
            height: 29.h,
            width: 105.w,
          ),
        ),
        actions: [
          ImageIcon(
            const AssetImage(igtvIcon),
            size: 30.sp,
          ),
          SizedBox(
            width: 17.w,
          ),
          ImageIcon(
            const AssetImage(sendIcon),
            size: 30.sp,
          ),
          SizedBox(
            width: 13.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    14,
                    (index) => const StatusAvatar(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              height: 0.0.h,
              color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                      ThemeMode.light
                  ? Colors.grey[300]
                  : Colors.white.withOpacity(0.3),
            ),
            const PostWidget(),
            const PostWidget(),
          ],
        ),
      ),
    );
  }
}
