import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class StatusAvatar extends StatelessWidget {
  const StatusAvatar({
    Key? key,
    this.imageUrl,
    this.userName,
  }) : super(key: key);
  final String? imageUrl;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 68.h,
            width: 68.w,
            decoration: BoxDecoration(
                border: GradientBoxBorder(
                  gradient: const LinearGradient(colors: [
                    Color(0xffFBAA47),
                    Color(0xffD91A46),
                    Color(0xffA60F93)
                  ]),
                  width: 3.w,
                ),
                shape: BoxShape.circle,
                color: Colors.green),
          ),
          SizedBox(
            height: 5.h,
          ),
          Center(
            child: Text(
              'your story',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
