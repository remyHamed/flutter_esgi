part of 'toggle_bloc.dart';

@immutable
abstract class ToggleState {}

class ToggleInitial extends ToggleState {
  const ToggleState;

  ToggleInitial(bool bool);

  @override
  List<Object> get props => [];

}

class ToggleInitialState extends ToggleState {
  final bool isOn;

  const ToggleInitialState({this.isOn});

  @override
  List<Object> get props => [isOn];

}