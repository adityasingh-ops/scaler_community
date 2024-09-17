import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaler_mobile/event.dart';
import 'package:scaler_mobile/state.dart';

class counterBloc extends Bloc<counterEvent, counterState>{
  counterBloc(): super(stateInit()){
      on<Increament>((event,emit){
    emit(counterState(state.value + 1, state.value + 1 < 0));
  });
  on<Decreament>((event,emit){
    emit(counterState(state.value - 1, state.value - 1 < 0));
  });
  on<Reset>((event,emit){
    emit(counterState(event.value, event.value < 0));
  });
  }





}