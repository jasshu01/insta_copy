import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_copy/HomePage/home_page_posts_component.dart';
import 'package:insta_copy/main.dart';
import 'package:insta_copy/ExplorePage/search_page.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override


  Widget build(BuildContext context) {
    return Container(
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
                MyApp.currMainComponent = PostsComponent();
                setState(() {});
              },
            ),
            InkWell(
              child: FaIcon(
                FontAwesomeIcons.search,
                color: Colors.white,
              ),
              onTap: () {
                // changeComponent(SearchPage());
                print("search page");
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
              child: FaIcon(
                FontAwesomeIcons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
