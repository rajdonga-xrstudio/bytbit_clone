import 'package:bybit_clone/modules/bottom_nav_bar/cubit/bottom_nav_cubit.dart';
import 'package:bybit_clone/modules/bottom_nav_bar/cubit/bottom_nav_state.dart';
import 'package:bybit_clone/res/app_colors.dart';
import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late final BottomNavigationCubit _bottomNavigationCubit;

  @override
  void initState() {
    _bottomNavigationCubit = BlocProvider.of<BottomNavigationCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      bloc: _bottomNavigationCubit,
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: SizeUtils.horizontalBlockSize * 3.0,
          selectedFontSize: SizeUtils.horizontalBlockSize * 3.0,
          backgroundColor: AppColors.bottomBarColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Markets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Derivatives',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Trade',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Assets',
            ),
          ],
          currentIndex: state.currentIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (index) => _bottomNavigationCubit.changeTab(index),
        );
      },
    );
  }
}
