import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:red_ux/redux/count_store.dart';
import 'package:red_ux/redux/counter_actions.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("redux counter"),
      ),
      body: StoreConnector<CountStore, CountStore>(
        converter: (store) => store.state,
        builder: (context, state) =>  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                state.count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              ElevatedButton(
                  onPressed: () => StoreProvider.of<CountStore>(context).dispatch(ClearCount()),
                  child: const Text("clear")
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => StoreProvider.of<CountStore>(context).dispatch(AddNumber()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}