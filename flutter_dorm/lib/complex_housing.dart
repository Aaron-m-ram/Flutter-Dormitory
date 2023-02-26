import 'package:flutter/material.dart';
import 'package:flutter_dorm/air_force_dorm_choice.dart';
import 'package:flutter_dorm/main.dart';
import 'package:flutter_dorm/navy_dorm_choice.dart';

//import 'package:flutter_dorm/resources.dart';

class ComplexHousing extends StatefulWidget {
  const ComplexHousing({super.key});

  @override
  State<ComplexHousing> createState() => _ComplexHousingState();
}

class _ComplexHousingState extends State<ComplexHousing> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text("which complex are you in?"),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) {
                    //       //return const NavyChoice();
                    //       debugPrint("click");
                    //       return null;
                    //     },
                    //   ),
                    // );
                    debugPrint("You pressed Complex 1");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Complex One',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Name 1, Name 2, Name 3 \nName 4, Name 5, Name 6',
                        //style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    debugPrint("You pressed Complex 2");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Complex Two',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Name 7, Name 8, Name 9 \nName 10, Name 11, Name 12',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    debugPrint("You pressed Complex 3");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Complex Three',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Name 13 , Name 14, Name 15 \nName 16, Name 17, Name 18',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    debugPrint("You pressed Complex 4");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Complex Four',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Name 19, Name 20, Name 21 \nName 22, Name 23, Name 24',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    debugPrint("You pressed Complex 5");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Complex Five',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Name 25, Name 26, Name 27 \nName 28, Name 29, Name 30',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(deviceWidth * .85, deviceHeight * .25),
                  ),
                  onPressed: () {
                    debugPrint("You pressed Complex 6");
                  },
                  child: Column(
                    children: const [
                      Text(
                        'Complex Six',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Name 31, Name 32, Name 33 \nName 34, Name 35, Name 36',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Color(0xFF0E3311).withOpacity(0.0),
                ),
              ],
            ),
          ),
        ));
  }
}
