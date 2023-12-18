part of 'counter_bloc.dart';

sealed class CounterEvent {}

class CounterIncrementedEvent extends CounterEvent {}

class CounterDecrementedEvent extends CounterEvent {}
