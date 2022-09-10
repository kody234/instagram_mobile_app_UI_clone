import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/images.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.navIndex,
    this.onTap,
  }) : super(key: key);
  final int navIndex;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      backgroundColor: Colors.red,
      selectedLabelStyle:
          Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
      unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      currentIndex: navIndex,
      items: [
        BottomNavigationBarItem(
          icon: ImageIcon(
            const AssetImage(homeIcon),
            color: Colors.black,
            size: 20.sp,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                searchIcon,
              ),
              color: Colors.black,
              size: 20.sp,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(postIcon),
              color: Colors.black,
              size: 20.sp,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(favouriteIcon),
              color: Colors.black,
              size: 20.sp,
            ),
            label: ''),
      ],
    );
  }
}
