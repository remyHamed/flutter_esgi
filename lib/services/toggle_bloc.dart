import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'toggle_event.dart';
part 'toggle_state.dart';

class ToggleBloc extends Bloc<ToggleEvent, ToggleState> {
  ToggleBloc() : super(const ToggleInitial(false))) {
    on<SubmiEvent>((event, emit) {
      if (kDebugMode) {
        print("Hello world");
        emit(ToggleInitialState(isOn: !state.isOn));
      }
    });
  }
}
