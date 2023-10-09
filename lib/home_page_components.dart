import 'package:flutter/material.dart';

import 'home_page_posts_component.dart';
import 'home_page_story_component.dart';
import 'home_page_top_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePageComponents(),
    );
  }
}

class MyHomePageComponents extends StatefulWidget {
  @override
  State<MyHomePageComponents> createState() => _MyHomePageComponentsState();
}

class _MyHomePageComponentsState extends State<MyHomePageComponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          HeaderComponent(),
          StoryComponent(),
          Expanded(
            child: PostsComponent(),
          ),
        ],
      )),
    );
  }
}
