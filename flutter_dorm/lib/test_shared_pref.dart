import 'package:flutter/material.dart';
//import 'global_variable.dart' as globals;
import 'package:flutter_dorm/user_simple_pref.dart';

class TestSharedPref extends StatefulWidget {
  const TestSharedPref({super.key});

  @override
  State<TestSharedPref> createState() => _TestSharedPrefState();
}

class _TestSharedPrefState extends State<TestSharedPref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: UserSimplePreferences.getTestGlobalList()!.length,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: ListTile(
                  //title: Text(items[index]),
                  //title: Text(globals.globalHTMLList[index]),
                  title:
                      Text(UserSimplePreferences.getTestGlobalList()![index])),
            ),
          );
        },
      ),
    );
  }
}
