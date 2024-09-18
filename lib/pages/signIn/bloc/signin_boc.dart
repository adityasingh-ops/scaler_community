import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_event.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_state.dart';

class signinBloc extends Bloc<SignInEvent, SigninState> {
  signinBloc() : super(SigninState(email: '', password: '')){
    on<emailEvent>(_emailEvent);

    on<passwordEvent>(_passwordEvent);
  }
  void _emailEvent(emailEvent event, Emitter<SigninState> emit) {
  emit(state.copyWith(email: event.email));
}
void _passwordEvent(passwordEvent event, Emitter<SigninState> emit) {
  emit(state.copyWith(password: event.password));
}

}

