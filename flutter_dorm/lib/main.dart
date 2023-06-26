import 'package:flutter/material.dart';
import 'package:flutter_dorm/home_page.dart';
import 'package:flutter_dorm/events_page.dart';
import 'package:flutter_dorm/more.dart';
import 'package:flutter_dorm/moving_out.dart';
import 'package:http/http.dart' as http;
//import 'global_variable.dart' as globals;
import 'package:html/parser.dart';
import 'package:flutter_dorm/user_simple_pref.dart';
import 'dart:async';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  String name = '';
  List<String> pets = [];
  List<String> test = [];
  Timer? timer;

  @override
  void initState() {
    super.initState();

    pets = UserSimplePreferences.getGlobalList() ?? [];
    test = UserSimplePreferences.getTest() ?? [];

    //timer = Timer.periodic(const Duration(seconds: 15), (Timer t) => testTemer());
    timer =
        Timer.periodic(const Duration(seconds: 60), (Timer t) => testRequest());
  }

  // void testTemer() {
  //   debugPrint("Timer has pass 15 seconds");
  // }

  void makeRequest() async {
    List<String> webList = [];
    Uri website = Uri.parse("https://jbphh.greatlifehawaii.com");
    var response = await http.get(website);
    //If the http request is successful the statusCode will be 200
    if (response.statusCode == 200) {
      String htmlToParse = response.body;
      //globals.globalHTML = htmlToParse;
      var document = parse(htmlToParse);
      var tagParsed = document.getElementsByTagName('h3');

      for (var i = 0; i < tagParsed.length; i++) {
        var tagChild = document.getElementsByTagName('h3')[i].children[0];
        var tagChildtext = tagChild.text;
        debugPrint(tagChildtext);
        //globals.globalHTMLList.add(tagChildtext);
        webList.add(tagChildtext);
      }

      await UserSimplePreferences.setGlobalList(webList);
    }
  }
  /***********************************************************************/

  void testRequest() async {
    List<String> newArrList = [];
    List<String> oldArrList = [];
    Uri testWebsite = Uri.parse("https://uwqremumwrxfxlxeon.wixsite.com/test");
    var testResponse = await http.get(testWebsite);

    if (testResponse.statusCode == 200) {
      String testToParse = testResponse.body;
      var testDocument = parse(testToParse);
      var testTag = testDocument.getElementsByTagName('h1');

      for (var i = 0; i < testTag.length; i++) {
        var testTagChild = testDocument.getElementsByTagName('h1')[i];
        var testTagText = testTagChild.text;
        //debugPrint(testTagText);
        newArrList.add(testTagText);
      }

      if (newArrList != oldArrList) {
        oldArrList = newArrList;
        debugPrint("The Arrays are different!");
      }

      /*
        In this section you will compare the test ArrList to the previous globalList
        If they are the same do nothing
        If they are different up date the list

        The text below can be a new function
        next we need to do a persistent timer
        The timer will countdown 24 hours and pull the new list
        next it will compare
      */

      await UserSimplePreferences.setTest(newArrList);

      /*************************************************************************/

    }
  }

  @override
  Widget build(BuildContext context) {
    makeRequest();
    testRequest();
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
