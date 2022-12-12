import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

// CounterBloc extends CounterEvent, CounterState
class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    // use CounterIncrementEvent of CounterEvent
    on<CounterIncrementEvent>((event, emit) {
      emit(IncrementState(state.counterValue + 1));
    });

    // use CounterDecrementEvent of CounterEvent
    on<CounterDecrementEvent>((event, emit) {
      emit(DecrementState(state.counterValue - 1));
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    // ignore: todo
    // TODO: implement fromJson
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    // ignore: todo
    // TODO: implement toJson
    return state.toMap();
  }
}
