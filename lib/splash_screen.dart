import 'dart:async';

import 'package:bybit_clone/modules/dash_board/dash_board_page.dart';
import 'package:bybit_clone/utils/navigation_utils.dart';
import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimeOut();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SizeUtils().init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ByBit App',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: SizeUtils.horizontalBlockSize * 10.0),
      ),
    );
  }

  void startTimeOut() {
    _timer = Timer(const Duration(seconds: 3), () async {
      // if user is login then Navigation to DashBoard Screen
      NavigationUtils.navigateToPage(context, const DashBoardPage());
    });
  }
}
