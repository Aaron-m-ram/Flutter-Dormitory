import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';
import 'package:url_launcher/url_launcher.dart';

final items = [
  'SAPR',
  'Military Family Support Center',
  'Chaplain',
  'Hale Aina DFAC',
  'Silver Dolphin Bistro'
];
final urlArr = [
  'https://www.15wing.af.mil/UNITS/15th-Wing-SAPR/',
  'https://jbphh.greatlifehawaii.com/support/military-family-support-center#:~:text=the%20military%20and%20family%20support%20center',
  'https://jbchapel.info/',
  'https://jbphh.greatlifehawaii.com/dining-retail/galleys/hale-aina-dining-facility#:~:text=members%20authorized%20to%20eat%20at%20the%20hale%20aina',
  'https://jbphh.greatlifehawaii.com/dining-retail/galleys/silver-dolphin-bistro-galley#:~:text=members%20authorized%20to%20eat%20at%20the%20silver%20dolphin%20bistro%3A'
];

class Resources extends StatefulWidget {
  const Resources({super.key});

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
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
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              Uri resourcesList = Uri.parse(urlArr[index]);
              launchUrl(resourcesList);
              //debugPrint("You pressed ${items[index]}");
            },
            child: Card(
              child: ListTile(
                title: Text(items[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
