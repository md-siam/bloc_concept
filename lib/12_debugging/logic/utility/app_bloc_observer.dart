// ignore_for_file: avoid_renaming_method_parameters, avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase cubit, Change change) {
    print(change);
    super.onChange(cubit, change);
  }

  @override
  void onClose(BlocBase cubit) {
    // TODO: implement onClose
    super.onClose(cubit);
  }

  @override
  void onCreate(BlocBase cubit) {
    print(cubit);
    super.onCreate(cubit);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
  }
}
