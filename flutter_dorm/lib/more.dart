import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher_string.dart';

final items = ['Facebook', 'Instagram', 'Great Life Hawaii'];
final urlArr = [
  'http://facebook.com/JBPHH/about',
  'https://instagram.com/jointbasephh',
  'https://jbphh.greatlifehawaii.com'
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
            Uri socialMedia = Uri.parse(urlArr[index]);
            launchUrl(socialMedia);
            //debugPrint("You pressed ${items[index]}");
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
