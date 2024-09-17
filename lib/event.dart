abstract class counterEvent {}
  class Increament extends counterEvent{}
  class Decreament extends counterEvent{}
  class Reset extends counterEvent{
    final int value;
    Reset(this.value);
  }