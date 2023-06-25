import 'package:flutter/material.dart';
import 'global_variable.dart' as globals;

final items = [
  'event 1',
  'event 2',
  'event 3',
  'event 4',
  'event 5',
  globals.globalStringListH3
];

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: globals.globalHTMLList.length,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: ListTile(
                //title: Text(items[index]),
                title: Text(globals.globalHTMLList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
