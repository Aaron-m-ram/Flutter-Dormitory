import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';
import 'package:url_launcher/url_launcher.dart';

final nameArr = ['Dorm Lead', 'Emergency Maintenance', 'Dorm Management'];
final urlArr = ['9876543210', '8796543210', '7896543210'];

class NavyDormSource1 extends StatefulWidget {
  const NavyDormSource1({super.key});

  @override
  State<NavyDormSource1> createState() => _NavyDormSource1State();
}

class _NavyDormSource1State extends State<NavyDormSource1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
        automaticallyImplyLeading: false, //
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const RootPage()));
                //debugPrint('I wanna got hooooommmmemeee');
              },
              icon: const Icon(Icons.home))
        ],
      ),
      body: ListView.builder(
        itemCount: nameArr.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              //Uri resourcesList = Uri.parse(urlArr[index]);
              Uri launchURI = Uri(
                  scheme: 'tel',
                  //path: '7896543211',
                  path: urlArr[index]);
              launchUrl(launchURI);
              //debugPrint("You pressed ${items[index]}");
            },
            child: Card(
              child: ListTile(
                title: Text(nameArr[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
