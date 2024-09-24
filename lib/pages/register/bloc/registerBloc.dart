import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaler_mobile/pages/register/bloc/registerEvent.dart';
import 'package:scaler_mobile/pages/register/bloc/registerState.dart';

class registerBloc extends Bloc<RegisterEvent, RegisterState> {
  registerBloc() : super(RegisterState()) {
    on<userEvent>(_userEvent);
    on<emailEvent>(_emailEvent);
    on<passwordEvent>(_passwordEvent);
    on<rePasswordEvent>(_repasswordEvent);
  }
  void _userEvent(userEvent event, Emitter<RegisterState> emit) {
    print(event.user);
    emit(state.copyWith(user: event.user));
  }

  void _emailEvent(emailEvent event, Emitter<RegisterState> emit) {
    print(event.email);
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(passwordEvent event, Emitter<RegisterState> emit) {
    print(event.password);
    emit(state.copyWith(password: event.password));
  }

  void _repasswordEvent(rePasswordEvent event, Emitter<RegisterState> emit) {
    print(event.rePassword);
    emit(state.copyWith(rePassword: event.rePassword));
  }
}
