import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';

class NavyChoice extends StatefulWidget {
  const NavyChoice({super.key});

  @override
  State<NavyChoice> createState() => _NavyChoiceState();
}

class _NavyChoiceState extends State<NavyChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("who owns the dorm"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RootPage(),
                  ),
                );
                //debugPrint('I wanna got hooooommmmemeee');
              },
              icon: const Icon(Icons.home))
        ],
      ),
      body: const Text("You are in Navy Choices"),
    );
  }
}
