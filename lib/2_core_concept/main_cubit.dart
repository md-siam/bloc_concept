// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main(List<String> args) {
  final cubit = CounterCubit(0);
  print(cubit.state); //! Should print 0 = the default state of the counter
  cubit.increment();
  print(cubit.state); //! Should print 1
  cubit.increment();
  print(cubit.state); //! Should print 2
  cubit.decrement();
  print(cubit.state); //! Should print 1
  cubit.close();
}
