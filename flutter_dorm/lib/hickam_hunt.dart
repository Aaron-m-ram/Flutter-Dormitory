import 'package:flutter/material.dart';
import 'package:flutter_dorm/air_force_dorm_choice.dart';
import 'package:flutter_dorm/main.dart';
import 'package:flutter_dorm/navy_dorm_choice.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:flutter_dorm/resources.dart';

class HickamHunt extends StatefulWidget {
  const HickamHunt({super.key});

  @override
  State<HickamHunt> createState() => _HickamHuntState();
}

class _HickamHuntState extends State<HickamHunt> {
  final Uri urlHickam = Uri.parse("https://www.hickamcommunities.com");
  final Uri urlHunt = Uri.parse("https://www.huntmilitarycommunities.com");
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hickam or Hunt?"),
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
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    launchUrl(urlHickam);
                    //debugPrint("You pressed hickam");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Hickam Communities',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                    //padding: const EdgeInsets.all(100.0),
                  ),
                  onPressed: () {
                    launchUrl(urlHunt);
                    //debugPrint("You pressed Hunt");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Hunt Communities',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ), /* */
                ),
                const Spacer(),
              ]),
        ));
  }
}
