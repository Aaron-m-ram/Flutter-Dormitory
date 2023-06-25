import 'package:flutter/material.dart';
import 'package:flutter_dorm/main.dart';
import 'package:url_launcher/url_launcher.dart';

final nameArr = [
  'Press to contact \nUnaccompanied Housing Management',
  'Email Unaccompanied Housing at: \n JBPHH.UH@fakeEmail.com',
  "Please Contact your Command",
  "UH Handbook",
  "Have a sugestion? \nPlease Email UH.Suggestion@fakeEmail.com"
];
final urlArr = [
  '9876543210',
  '',
  '9154977688',
  'https://96f32fff-8d95-47fa-bbab-f82516f9fa7f.filesusr.com/ugd/d07603_5ed0377626c94d499e068f1dc13af740.pdf'
      ''
];

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
              if (index == 0) {
                Uri launchURI = Uri(
                    scheme: 'tel',
                    //path: '7896543211',
                    path: urlArr[index]);
                //print(await canLaunchUrl(launchURI));
                launchUrl(
                    launchURI); //need this line in order to actually launch phone number
                //debugPrint("You pressed ${items[index]}");
              }
              if (index == 3) {
                debugPrint("UH HANDBOOK!!!!");
                Uri handbook = Uri.parse(
                    "https://96f32fff-8d95-47fa-bbab-f82516f9fa7f.filesusr.com/ugd/d07603_5ed0377626c94d499e068f1dc13af740.pdf");
                //Uri handbook = Uri.parse(urlArr[index]);
                launchUrl(handbook);
              }
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
