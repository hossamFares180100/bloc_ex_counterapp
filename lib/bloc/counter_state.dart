part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}
final class CounterInitial extends CounterState {}
class CounterValueChangedState extends CounterState{
  final int counter;
  CounterValueChangedState({required this.counter});
}