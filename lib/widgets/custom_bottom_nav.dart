import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../services/providers/theme_state.dart';
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
      selectedIconTheme: IconThemeData(
          color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                  ThemeMode.light
              ? Colors.black
              : Colors.white),
      unselectedIconTheme: IconThemeData(
          color: Provider.of<ThemeState>(context, listen: false).appTheme ==
                  ThemeMode.light
              ? Colors.black
              : Colors.white),
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
          backgroundColor: Theme.of(context).bottomAppBarColor,
          icon: ImageIcon(
            const AssetImage(homeIcon),
            size: 20.sp,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                searchIcon,
              ),
              size: 20.sp,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(postIcon),
              size: 20.sp,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(favouriteIcon),
              size: 20.sp,
            ),
            label: ''),
      ],
    );
  }
}
