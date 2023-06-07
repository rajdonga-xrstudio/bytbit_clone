import 'package:bybit_clone/modules/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bybit_clone/modules/bottom_nav_bar/cubit/bottom_nav_cubit.dart';
import 'package:bybit_clone/modules/bottom_nav_bar/cubit/bottom_nav_state.dart';
import 'package:bybit_clone/modules/dash_board/screens/assets_screen.dart';
import 'package:bybit_clone/modules/dash_board/screens/derivatives_screen.dart';
import 'package:bybit_clone/modules/dash_board/screens/home_screen.dart';
import 'package:bybit_clone/modules/dash_board/screens/markets_screen.dart';
import 'package:bybit_clone/modules/dash_board/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
        builder: (context, state) {
          return IndexedStack(
            index: state.currentIndex,
            children: const <Widget>[
              HomeScreen(),
              MarketsScreen(),
              DerivativesScreen(),
              TradeScreen(),
              AssetsScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
