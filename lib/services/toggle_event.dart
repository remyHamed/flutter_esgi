part of 'toggle_bloc.dart';

@immutable
abstract class ToggleEvent {}

class SubmiEvent extends ToggleEvent {
  SubmiEvent();
}