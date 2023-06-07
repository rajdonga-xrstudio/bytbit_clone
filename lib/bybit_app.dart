import 'package:bybit_clone/res/app_assets.dart';
import 'package:bybit_clone/res/app_colors.dart';
import 'package:bybit_clone/splash_screen.dart';
import 'package:bybit_clone/utils/utils.dart';
import 'package:flutter/material.dart';

class ByBitApp extends StatefulWidget {
  const ByBitApp({Key? key}) : super(key: key);

  @override
  State<ByBitApp> createState() => _ByBitAppState();
}

class _ByBitAppState extends State<ByBitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bybit',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        fontFamily: AppAssets.ibmPlexFont,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      builder: (context, child) {
        return Scaffold(
          body: GestureDetector(
            onTap: () {
              Utils.hideKeyboard(context);
            },
            child: child,
          ),
        );
      },
      home: const SplashScreen(),
    );
  }
}
