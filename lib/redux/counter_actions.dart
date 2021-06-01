abstract class CounterAction {}

class AddNumber extends CounterAction {

}

class ClearCount extends CounterAction {}

class UpdateCount extends CounterAction {
  final int newCount;

  UpdateCount(this.newCount);
}