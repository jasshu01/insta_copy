import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_copy/apis.dart';

class MyProfilePagePosts extends StatefulWidget {
  List<String>? myProfileHighlights = Data.myProfileHighlights;

  @override
  State<MyProfilePagePosts> createState() => _MyProfilePagePostsState();
}

class _MyProfilePagePostsState extends State<MyProfilePagePosts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return Image.network(
          "https://source.unsplash.com/400x400/?luxury?sig=${index}",
          fit: BoxFit.fitWidth,
          height: 400,
          width: double.infinity,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator();
          },
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.new_releases_outlined,
              size: 400,
            );
          },
        );
      },
      itemCount: 50,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
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
