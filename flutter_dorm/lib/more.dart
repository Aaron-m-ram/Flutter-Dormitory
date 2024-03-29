import 'package:flutter/material.dart';
//import 'package:flutter_dorm/issue_res.dart';
import 'package:flutter_dorm/test_shared_pref.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher_string.dart';
//import 'package:flutter_dorm/survey.dart';

final items = [
  'Facebook',
  'Instagram',
  'Great Life Hawaii',
  'Survey',
  //'Still have a question?'
  'Test Page'
];
final urlArr = [
  'http://facebook.com/JBPHH/about',
  'https://instagram.com/jointbasephh',
  'https://jbphh.greatlifehawaii.com',
  'https://ice.disa.mil/index.cfm?fa=card&sp=143563&s=1008&dep=*DoD&sc=8',
  //const IssueResolution()
];

//    fb://profile/10006465925903?wtsid=wt_0DGU4nrQZPLByNWh0

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            if (index != 4) {
              Uri socialMedia = Uri.parse(urlArr[index]);
              launchUrl(socialMedia);
              debugPrint("You pressed ${items[index]}");
            } else {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    //return const IssueResolution();
                    return const TestSharedPref();
                  },
                ),
              );
            }
            // Uri socialMedia = Uri.parse(urlArr[index]);
            // launchUrl(socialMedia);
            // debugPrint("You pressed ${items[index]}");
            debugPrint("You pressed help");
          },
          child: Card(
            child: ListTile(
              title: Text(items[index]),
            ),
          ),
        );
      },
    );
  }

  // String? encodeQueryParameters(Map<String, String> params) {
  //   return params.entries
  //       .map((MapEntry<String, String> e) =>
  //           '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
  //       .join('&');
  // }
}
