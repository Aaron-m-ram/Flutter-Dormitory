import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';
import 'package:url_launcher/url_launcher.dart';

final nameArr = [
  'Please Contact your Command \n or \n Press this button to contact \nUnaccompanied Housing Management',
];
final urlArr = ['9876543210', ''];

class IssueResolution extends StatelessWidget {
  const IssueResolution({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Issue Resolution'),
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
              //print(await canLaunchUrl(launchURI));
              launchUrl(
                  launchURI); //need this line in order to actually launch phone number
              //debugPrint("You pressed ${items[index]}");
            },
            child: Card(
              child: ListTile(
                title: Center(
                  child: Text(
                    nameArr[index],
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
