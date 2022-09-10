import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/auth/login_screen.dart';
import 'package:instagram_clone/auth/sign_up_screen.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/tabs/explore_screen.dart';
import 'package:instagram_clone/services/providers/theme_state.dart';
import 'package:instagram_clone/utils/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeState(),
          ),
        ],
        builder: (context, child) => Consumer<ThemeState>(
          builder: (context, themeState, child) => MaterialApp(
            theme: AppTheme().light(),
            darkTheme: AppTheme().dark(),
            themeMode: themeState.appTheme,
            home: const LoginScreen(),
          ),
        ),
      ),
    );
  }
}
