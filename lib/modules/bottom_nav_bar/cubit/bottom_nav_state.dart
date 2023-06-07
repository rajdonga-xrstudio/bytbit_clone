import 'package:equatable/equatable.dart';

abstract class BottomNavigationState extends Equatable {
  final int currentIndex;

  const BottomNavigationState({this.currentIndex = 0});

  @override
  List get props => [currentIndex];
}

class BottomNavigationInitialState extends BottomNavigationState {
  @override
  List get props => [];
}

class ChangeTabState extends BottomNavigationState {
  final int index;

  const ChangeTabState(this.index) : super(currentIndex: index);

  @override
  List get props => [index];
}
