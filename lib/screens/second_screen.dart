import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taka/shared/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterProvider counterProvider = Provider.of<CounterProvider>(
      context,
    );

    return Scaffold(
      appBar: AppBar(title: Text("taka 2")),
      body: Row(
        children: [
          TextButton(
            onPressed: () {
              counterProvider.increment();
              Navigator.pop(context);
            },
            child: Text("Aumenta taka"),
          ),
        ],
      ),
    );
  }
}
