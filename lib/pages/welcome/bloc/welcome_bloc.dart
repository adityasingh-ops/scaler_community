import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaler_mobile/pages/welcome/bloc/welcome_event.dart';
import 'package:scaler_mobile/pages/welcome/bloc/welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState(index: 0)) {
    on<WelcomeStarted>((event, emit) {
      emit(WelcomeState(index: state.index));
    });
  }
}