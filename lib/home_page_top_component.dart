import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderComponent extends StatefulWidget {
  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.instagram,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "FinstaGram",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            Spacer(),
            InkWell(
              child: FaIcon(
                FontAwesomeIcons.facebookMessenger,
                size: 30,
                color: Colors.white,
              ),
              onTap: () {
                print("messages clicked");
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return MyMessagesScreen();
                // }));
              },
            )
          ],
        ),
      ),
    );
  }
}