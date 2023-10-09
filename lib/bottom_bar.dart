import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              onTap: (){
                // currComponent = "Home";
                // print(currComponent);
                // setState(() {
                // });
              },
            ),
            InkWell(
              child: FaIcon(
                FontAwesomeIcons.search,
                color: Colors.white,
              ),
              onTap: () {
                // currComponent = "Explore";
                // print(currComponent);
                // setState(() {
                // });
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
