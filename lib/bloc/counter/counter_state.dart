part of 'counter_bloc.dart';

// CounterState
class CounterState extends Equatable {
  final int counterValue;

  const CounterState({required this.counterValue});

  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [counterValue];

  Map<String, dynamic> toMap() {
    return {'counterValue': counterValue};
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(counterValue: map['counterValue']?.toInt() ?? 0);
  }
}

// CounterInitial
class CounterInitial extends CounterState {
  const CounterInitial() : super(counterValue: 0);
}

// IncrementState
class IncrementState extends CounterState {
  const IncrementState(int increasedValue)
      : super(counterValue: increasedValue);
}

// DecrementState
class DecrementState extends CounterState {
  const DecrementState(int decreasedValue)
      : super(counterValue: decreasedValue);
}
