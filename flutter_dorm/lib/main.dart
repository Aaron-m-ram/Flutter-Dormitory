import 'package:flutter/material.dart';
import 'package:flutter_dorm/home_page.dart';
import 'package:flutter_dorm/events_page.dart';
import 'package:flutter_dorm/more.dart';
import 'package:flutter_dorm/moving_out.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), EventsPage(), MovingOut(), More()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JBPH-H Dorms"),
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), label: 'Events'),
          NavigationDestination(
              icon: Icon(Icons.local_shipping_outlined), label: 'Moving Out'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
            debugPrint("this is where we are at ${currentPage}");
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
