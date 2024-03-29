import 'package:flutter/material.dart';
import 'package:flutter_dorm/user_simple_pref.dart';
//import 'global_variable.dart' as globals;

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
        itemCount: UserSimplePreferences.getGlobalList()!.length,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: ListTile(
                  //title: Text(items[index]),
                  //title: Text(globals.globalHTMLList[index]),
                  title: Text(UserSimplePreferences.getGlobalList()![index])),
            ),
          );
        },
      ),
    );
  }
}
