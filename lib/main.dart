import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_copy/HomePage/home_page_components.dart';
import 'package:insta_copy/HomePage/home_page_posts_component.dart';
import 'package:insta_copy/HomePage/home_page_story_component.dart';
import 'package:insta_copy/HomePage/home_page_top_component.dart';
import 'package:insta_copy/MyProfile/my_profile_page.dart';
import 'package:insta_copy/ExplorePage/search_page.dart';

import 'bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static Widget currMainComponent = MyHomePageComponents();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          textTheme: Typography.whiteHelsinki,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38)
              .copyWith(background: Colors.black)),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(MyApp.currMainComponent);
    // MyApp.currMainComponent=SearchPage();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              Text("hello",style: TextStyle(color: Colors.black),),
              Text("hello",style: TextStyle(color: Colors.black),),
              Text("hello",style: TextStyle(color: Colors.black),),
              Text("hello",style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(child: MyApp.currMainComponent),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: FaIcon(
                        FontAwesomeIcons.home,
                        color: Colors.white,
                      ),
                      onTap: () {
                        print("home page");
                        MyApp.currMainComponent = MyHomePageComponents();
                        setState(() {});
                      },
                    ),
                    InkWell(
                      child: FaIcon(
                        FontAwesomeIcons.search,
                        color: Colors.white,
                      ),
                      onTap: () {
                        MyApp.currMainComponent = SearchPage();
                        setState(() {});
                      },
                    ),
                    InkWell(
                      child: FaIcon(
                        FontAwesomeIcons.video,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      child: FaIcon(
                        FontAwesomeIcons.plusSquare,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        MyApp.currMainComponent=MyProfilePage();
                        setState(() {

                        });
                      },
                      child: FaIcon(
                        FontAwesomeIcons.person,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
