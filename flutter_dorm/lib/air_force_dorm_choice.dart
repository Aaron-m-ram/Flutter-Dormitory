import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';
import 'package:flutter_dorm/dorm_sources/navy_dorm_sources/navy_dorm_source1.dart';

final namesArr = ['AF1', 'AF2', 'AF3', 'AF4', 'AF5', 'AF6'];

class AirForceChoice extends StatefulWidget {
  const AirForceChoice({super.key});

  @override
  State<AirForceChoice> createState() => _AirForceState();
}

class _AirForceState extends State<AirForceChoice> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text("who owns the dorm"),
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
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            6,
            (index) {
              return Center(
                child: Column(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(deviceWidth * .40, deviceHeight * .15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const NavyDormSource1();
                            },
                          ),
                        );
                        debugPrint("You pressed maintx");
                      },
                      child: Column(
                        children: [
                          const Icon(
                            Icons.apartment,
                            size: 60,
                          ),
                          Text(
                            namesArr[index],
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ) //const Text("You are in Navy Choices"),
        );
  }
}
