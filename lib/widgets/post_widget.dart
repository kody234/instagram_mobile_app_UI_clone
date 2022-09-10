import 'package:carousel_slider/carousel_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/widgets/post_header_widget.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';
import 'custom_image_slider.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PostHeader(),
        ImageSlider(
          controller: controller,
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 13.r,
                backgroundColor:
                    Provider.of<ThemeState>(context, listen: false).appTheme ==
                            ThemeMode.light
                        ? Colors.black
                        : Colors.white,
              ),
              SizedBox(
                width: 6.w,
              ),
              Text('Liked by craig_love and 44,686 others',
                  style: Theme.of(context).textTheme.titleSmall),
              SizedBox(
                width: 6.w,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: RichText(
            text: TextSpan(
                text: 'joshua_l',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          ' The game in Japan was amazing and I want to share some photos',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w400, fontSize: 15.sp)),
                ]),
          ),
        )
      ],
    );
  }
}
