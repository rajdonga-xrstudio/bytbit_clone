import 'package:bybit_clone/modules/bottom_nav_bar/cubit/bottom_nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationInitialState());

  void changeTab(int index) async {
    emit(ChangeTabState(index));
  }
}
