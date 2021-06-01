import 'package:red_ux/redux/count_store.dart';

import 'counter_actions.dart';

CountStore counterReducers(CountStore prevState, dynamic action) {

  if (action is AddNumber) {
    return CountStore.copyWith(prev: prevState);
  } else if (action is UpdateCount) {
    return CountStore.copyWith(prev: prevState, count: action.newCount);
  } else {
    return CountStore(count: prevState.count);
  }

}