import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state < 10){
      emit(state + 1);
    } 
    else {
      Fluttertoast.showToast(msg: "Límite alcanzado");
    } 
  }
  void decrement() {
    if (state > -10){
      emit(state - 1);
    } 
    else {
      Fluttertoast.showToast(msg: "Límite alcanzado");
    } 
  }
  void restart() => emit(0);
}