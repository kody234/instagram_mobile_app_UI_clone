import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/services/providers/theme_state.dart';
import 'package:instagram_clone/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

import '../../utils/images.dart';
import '../../widgets/custom_chip.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                        height: 43.h,
                        child: const CustomTextField(
                          hintText: 'Search',
                          icon: Icons.search,
                        )),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  ImageIcon(
                    const AssetImage(liveIcon),
                    size: 34.sp,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => const CustomChip(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: const [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => Image.asset(testImage),
                  childCount: 20),
            ))
          ],
        ),
      ),
    );
  }
}
