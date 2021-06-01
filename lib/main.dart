import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:red_ux/redux/count_store.dart';
import 'package:red_ux/redux/counter_middleware.dart';
import 'package:red_ux/redux/counter_reducers.dart';
import 'package:redux/redux.dart';

import 'view/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Store<CountStore> _store = Store<CountStore>(counterReducers,
      initialState: CountStore.initial(), middleware: [countStoreMiddleware]);

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountStore>(
      store: _store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}