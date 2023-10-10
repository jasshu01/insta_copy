import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: MyProfilePageHeader(),
    );
  }
}

class MyProfilePageHeader extends StatefulWidget {
  @override
  State<MyProfilePageHeader> createState() => _MyProfilePageHeaderState();
}

class _MyProfilePageHeaderState extends State<MyProfilePageHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.lock,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "jasshu_garg_",
            style: TextStyle(fontSize: 24),
          ),
          Spacer(),
          FaIcon(
            FontAwesomeIcons.plusSquare,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 10,
          ),
          FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.white,
            size: 26,
          ),
        ],
      ),
    );
  }
}
