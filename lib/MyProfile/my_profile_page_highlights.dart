import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_copy/apis.dart';

class MyProfilePageProfileHighlights extends StatefulWidget {
  List<String>? myProfileHighlights = Data.myProfileHighlights;
  
  @override
  State<MyProfilePageProfileHighlights> createState() => _MyProfilePageProfileHighlightsState();
}

class _MyProfilePageProfileHighlightsState extends State<MyProfilePageProfileHighlights> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100, // Adjust the height as needed
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.0),
            )),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://source.unsplash.com/40x40/?${widget.myProfileHighlights![index]}"
                          ),
                        ),
                      ),
                      Text(
                        truncateText(widget.myProfileHighlights![index], 8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            );
          },
          itemCount: widget.myProfileHighlights?.length,
        ),
      ),
    );
  }
}

String truncateText(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text;
  } else {
    return text.substring(0, maxLength) + "...";
  }
}
