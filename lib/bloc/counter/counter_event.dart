part of 'counter_bloc.dart';

// CounterEvent
abstract class CounterEvent {}

// CounterIncrementEvent
class CounterIncrementEvent extends CounterEvent {}

// CounterDecrementEvent
class CounterDecrementEvent extends CounterEvent {}
