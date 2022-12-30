import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
          ),
          onPressed: () {
            debugPrint("You pressed maintx");
          },
          child: const Text('Maintenance'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
            //padding: const EdgeInsets.all(100.0),
          ),
          onPressed: () {
            debugPrint("You pressed help");
          },
          child: const Text('Help'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
            //padding: const EdgeInsets.all(100.0),
          ),
          onPressed: () {
            debugPrint("You pressed Resources");
          },
          child: const Text('Resources'),
        ), /* */
      ]),
    );
  }
}
