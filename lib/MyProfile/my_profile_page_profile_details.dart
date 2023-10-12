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
      home: MyProfilePageProfileDetails(),
    );
  }
}

class MyProfilePageProfileDetails extends StatefulWidget {
  @override
  State<MyProfilePageProfileDetails> createState() =>
      _MyProfilePageProfileDetailsState();
}

class _MyProfilePageProfileDetailsState
    extends State<MyProfilePageProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://source.unsplash.com/400x400/?man",
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("123\nposts",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16)),
                    Text("123\nfollowers",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16)),
                    Text("123\nfollowing",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid)),
                      ),
                      onPressed: () {},
                      child: Text("Edit Profile")),
                ),
                Container(
                  width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        side: MaterialStateProperty.all(BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid)),
                      ),
                      onPressed: () {},
                      child: Text("Share Profile")),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: FaIcon(
                    Icons.person_add_alt_outlined,
                    color: Colors.white,
                    size: 26,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

