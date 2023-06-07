import 'dart:io';

import 'package:bybit_clone/bybit_app.dart';
import 'package:bybit_clone/injection.dart';
import 'package:bybit_clone/modules/bottom_nav_bar/cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///Configure injection injecting from here for the app
  configureDependencies();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationCubit>(
          create: (context) => getIt<BottomNavigationCubit>(),
        ),
      ],
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Platform.isIOS ? Brightness.dark : Brightness.light,
          statusBarBrightness: Platform.isIOS ? Brightness.dark : Brightness.light,
        ),
        child: const ByBitApp(),
      ),
    ));
  });
}
