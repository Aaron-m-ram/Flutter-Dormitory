import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      ElevatedButton(
        onPressed: () {
          debugPrint("You pressed maintx");
        },
        child: const Text('Maintenance'),
      ),
      ElevatedButton(
        onPressed: () {
          debugPrint("You pressed help");
        },
        child: const Text('Help'),
      ),
      ElevatedButton(
        onPressed: () {
          debugPrint("You pressed Resources");
        },
        child: const Text('Resources'),
      ),
    ]));
  }
}
