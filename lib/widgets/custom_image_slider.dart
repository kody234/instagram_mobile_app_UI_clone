import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/utils/images.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key, required this.controller}) : super(key: key);
  final CarouselController controller;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: widget.controller,
          itemCount: 4,
          itemBuilder: (context, index, pageIndex) {
            print(_pageIndex.toString());
            return Image.asset(
              testImage,
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
              onPageChanged: (index, child) {
                setState(() {
                  _pageIndex = index;
                });
              },
              enableInfiniteScroll: false,
              disableCenter: true,
              height: 375.h,
              initialPage: _pageIndex,
              padEnds: false,
              viewportFraction: 1.0),
        ),
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 80.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ImageIcon(
                      AssetImage(favouriteIcon),
                    ),
                    ImageIcon(
                      AssetImage(chatIcon),
                    ),
                    ImageIcon(
                      AssetImage(sendIcon),
                    ),
                  ],
                ),
              ),
              DotsIndicator(
                dotsCount: 4,
                mainAxisAlignment: MainAxisAlignment.start,
                position: _pageIndex.toDouble(),
                decorator: DotsDecorator(
                    color: Colors.grey.shade400, activeColor: Colors.blue),
              ),
              SizedBox(
                width: 1.w,
              ),
              const ImageIcon(
                AssetImage(bookmarkIcon),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
