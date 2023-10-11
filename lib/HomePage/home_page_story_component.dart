import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_copy/apis.dart';

class StoryComponent extends StatefulWidget {
  List<String>? myNames = Data.myNames;



  @override
  State<StoryComponent> createState() => _StoryComponentState();
}

class _StoryComponentState extends State<StoryComponent> {
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
                            // "https://source.unsplash.com/random/40x40?sig=${index + index}",
                            "https://source.unsplash.com/400x400/?human?sig=${index}"
                          ),
                        ),
                      ),
                      Text(
                        truncateText(widget.myNames![index], 8),
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
          itemCount: widget.myNames?.length,
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
