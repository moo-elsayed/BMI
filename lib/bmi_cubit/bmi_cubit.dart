import 'dart:developer';

import 'package:bmi/bmi_cubit/bmi_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiStates> {
  BmiCubit() : super(InitialState());

  double height = 120;
  int weight = 50;
  int age = 18;
  bool isMale = false;

  changeHeight({required double val}) {
    height = val;
    log(height.toString());
    emit(NewState());
  }

  changeWeight({required bool inc}) {
    inc ? weight++ : weight--;
    emit(NewState());
  }

  changeAge({required bool inc}) {
    inc ? age++ : age--;
    emit(NewState());
  }

  changeGender() {
    isMale = !isMale;
    emit(NewState());
  }
}
