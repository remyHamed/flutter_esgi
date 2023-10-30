import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';  // Assurez-vous d'importer flutter_bloc
import '../services/toggle_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Column(  // Retirez 'const' ici
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<ToggleBloc, ToggleState>(  // Corrigez le nom ici
              builder: (context, state) {
                return TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () {
                        context.read<ToggleBloc>().add(SubmiEvent());
                      },
                    ),
                    border: OutlineInputBorder(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
