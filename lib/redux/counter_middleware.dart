import 'package:red_ux/redux/count_store.dart';
import 'package:red_ux/redux/counter_actions.dart';
import 'package:redux/redux.dart';

void countStoreMiddleware (Store<CountStore> store, dynamic action, NextDispatcher next) {
  if (action is AddNumber) {
    int count = store.state.count;
    count++;
    store.dispatch(UpdateCount(count));
  } else if (action is ClearCount) {
    store.dispatch(UpdateCount(0));
  }
  next(action);
}