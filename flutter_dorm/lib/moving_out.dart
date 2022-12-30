import 'package:flutter/material.dart';

class MovingOut extends StatefulWidget {
  const MovingOut({super.key});

  @override
  State<MovingOut> createState() => _MovingOutState();
}

class _MovingOutState extends State<MovingOut> {
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
              debugPrint("You pressed off base");
            },
            child: Column(
              children: const [
                Text(
                  'Off Base Housing',
                  style: TextStyle(fontSize: 30),
                ),
                Text('If you want to experience Hawaiian living'),
              ],
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
              //padding: const EdgeInsets.all(100.0),
            ),
            onPressed: () {
              debugPrint("You pressed on base");
            },
            child: Column(
              children: const [
                Text(
                  'On Base Housing',
                  style: TextStyle(fontSize: 30),
                ),
                Text("Experience life in the base's amazing communities")
              ],
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(deviceWidth * .85, deviceHeight * .20),
            //padding: const EdgeInsets.all(100.0),
          ),
          onPressed: () {
            debugPrint("You pressed bah calculator");
          },
          child: Column(
            children: const [
              Text(
                'BAH Calculator',
                style: TextStyle(fontSize: 30),
              ),
              Text('Know how much money you get to live in Hawaii'),
            ],
          ), /* */
        )
      ]),
    );
  }
}
