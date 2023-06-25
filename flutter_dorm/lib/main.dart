import 'package:flutter/material.dart';
import 'package:flutter_dorm/home_page.dart';
import 'package:flutter_dorm/events_page.dart';
import 'package:flutter_dorm/more.dart';
import 'package:flutter_dorm/moving_out.dart';
import 'package:http/http.dart' as http;
import 'global_variable.dart' as globals;
import 'package:html/parser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void makeRequest() async {
    Uri website = Uri.parse("https://jbphh.greatlifehawaii.com");
    var response = await http.get(website);
    //If the http request is successful the statusCode will be 200
    if (response.statusCode == 200) {
      String htmlToParse = response.body;
      globals.globalHTML = htmlToParse;
      //debugPrint("GlobalHTML: \n\n\n ");
      //debugPrint(globals.globalHTML);
      var document = parse(globals.globalHTML);
      var tagParsed = document.getElementsByTagName('h3');

      debugPrint("StringList \n $tagParsed");
      //debugPrint("Stringid \n $idParsed");
      var tagChild0 = document.getElementsByTagName('h3')[0].children[0];
      debugPrint("tagChild0: \n $tagChild0");
      var tagChild0Text = tagChild0.text;
      debugPrint("tagChildText0: \n $tagChild0Text");
      globals.globalStringListH3 = tagChild0Text;
      debugPrint('globals TagChild H3 Text');
      debugPrint(globals.globalStringListH3);

      for (var i = 0; i < tagParsed.length; i++) {
        var tagChild = document.getElementsByTagName('h3')[i].children[0];
        var tagChildtext = tagChild.text;
        globals.globalHTMLList.add(tagChildtext);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    makeRequest();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), EventsPage(), MovingOut(), More()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("JBPH-H Unaccompanied Housing"),

        title: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text("JBPH-H Unaccompanied Housing"),
            const Spacer(),
            Image.asset(
                "assets/images/JBPHH_logo_Upscaled-removebg-preview.png",
                width: 55),
          ],
        ),
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), label: 'Events'),
          NavigationDestination(
              icon: Icon(Icons.local_shipping_outlined), label: 'Moving Out'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            // if (index == 1) {
            //   makeRequest();
            // }
            currentPage = index;
            debugPrint("this is where we are at $currentPage");
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
