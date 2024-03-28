import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this.context) : super(HomeScreenInitial());
  BuildContext context;

  int count = 0;
  increement() {
    if (count < 10) {
      count++;
    }
    emit(HomeScreenInitial());
  }

  decreement() {
    if (count > 0) {
      count--;
    }
    emit(HomeScreenInitial());
  }
}
