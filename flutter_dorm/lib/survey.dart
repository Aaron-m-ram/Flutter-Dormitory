import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';

final surveyResponse = [0];

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  double sliderOneValue = 3;
  double sliderTwoValue = 3;
  double sliderThreeValue = 3;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Survey'),
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const RootPage()));
              },
              icon: const Icon(Icons.home))
        ],
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            child: Column(
              children: [
                const Text("How do you feel about the staff?"),
                Slider(
                    value: sliderOneValue,
                    max: 5,
                    min: 1,
                    divisions: 5,
                    onChanged: (double value) {
                      setState(() {
                        sliderOneValue = value;
                      });
                    })
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Text("How do you feel about the room?"),
                Slider(
                    value: sliderTwoValue,
                    max: 5,
                    min: 1,
                    divisions: 5,
                    onChanged: (double value) {
                      setState(() {
                        sliderTwoValue = value;
                      });
                    })
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Text("How do you feel about the base?"),
                Slider(
                    value: sliderThreeValue,
                    max: 5,
                    min: 1,
                    divisions: 5,
                    onChanged: (double value) {
                      setState(() {
                        sliderThreeValue = value;
                      });
                    })
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(deviceWidth * .85, deviceHeight * .10),
            ),
            onPressed: () {
              debugPrint("You pressed maintx");
            },
            child: Column(
              children: const [
                Text(
                  'Submit',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        ]),
      ),
      //bottomNavigationBar: (),
    );
  }
}
