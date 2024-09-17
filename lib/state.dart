class counterState {
  final int value;
  final bool isNegative;

  counterState(this.value, this.isNegative);
}

class stateInit extends counterState {
  stateInit() : super(2, false);
}
