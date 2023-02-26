import 'package:flutter/material.dart';
import 'package:flutter_dorm/air_force_dorm_choice.dart';
import 'package:flutter_dorm/main.dart';
import 'package:flutter_dorm/navy_dorm_choice.dart';

//import 'package:flutter_dorm/resources.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text("which dorm are you in?"),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const NavyChoice();
                        },
                      ),
                    );
                    debugPrint("You pressed maintx");
                  },
                  child: Column(
                    children: const [
                      Icon(
                        Icons.directions_boat,
                        size: 60,
                      ),
                      Text(
                        'Navy',
                        style: TextStyle(fontSize: 30),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AirForceChoice();
                        },
                      ),
                    );
                    debugPrint("You pressed Resources");
                  },
                  child: Column(
                    children: const [
                      Icon(
                        Icons.airplanemode_active,
                        size: 60,
                      ),
                      Text(
                        'Air Force',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ), /* */
                ),
                const Spacer(),
              ]),
        ));
  }
}
