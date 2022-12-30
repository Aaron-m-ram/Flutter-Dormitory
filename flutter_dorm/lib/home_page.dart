import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    final Uri url = Uri.parse("https://google.com");

    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
            ),
            onPressed: () {
              launchUrl(url);
              //debugPrint("You pressed maintx");
            },
            child: Column(
              children: const [
                Icon(
                  Icons.construction,
                  size: 60,
                ),
                Text(
                  'Maintenance',
                  style: TextStyle(fontSize: 30),
                ),
                Text('Report a leaky faucet, broken locks, etc...'),
              ],
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
              //padding: const EdgeInsets.all(100.0),
            ),
            onPressed: () async {
              debugPrint("You pressed help");
            },
            child: Column(
              children: const [
                Icon(
                  Icons.support_agent,
                  size: 60,
                ),
                Text(
                  'Help',
                  style: TextStyle(fontSize: 30),
                ),
                Text('If you need to reach management or staff')
              ],
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
            //padding: const EdgeInsets.all(100.0),
          ),
          onPressed: () {
            debugPrint("You pressed Resources");
          },
          child: Column(
            children: const [
              Icon(
                Icons.emoji_people,
                size: 60,
              ),
              Text(
                'Resources',
                style: TextStyle(fontSize: 30),
              ),
              Text('Find aid for any situation'),
            ],
          ), /* */
        )
      ]),
    );
  }
}
