// ignore_for_file: avoid_print

import 'bloc_imports.dart';

class MyBlocObserver extends BlocObserver {
  // onChange
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange: $change');
  }

  // onEvent
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent: $event');
  }

  // onTransition
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition: $transition');
  }

  // onError
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('onError: $error');
  }
}
