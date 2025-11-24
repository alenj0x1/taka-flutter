import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final Function(int) counterChanged;

  final int counter;
  const SecondScreen({
    required this.counter,
    required this.counterChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("taka 2")),
      body: Row(
        children: [
          TextButton(
            onPressed: () {
              counterChanged(counter + 1);
              Navigator.pop(context);
            },
            child: Text("Aumenta taka"),
          ),
        ],
      ),
    );
  }
}
