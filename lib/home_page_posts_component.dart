import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'apis.dart';

String truncateText(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text;
  } else {
    return text.substring(0, maxLength) + "...";
  }
}


class PostsComponent extends StatefulWidget {
  List<Post>? postList = Data.postList;


  @override
  State<PostsComponent> createState() => _PostsComponentState();
}

class _PostsComponentState extends State<PostsComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            key: UniqueKey(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 8.0),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 2.0, right: 5.0, bottom: 2.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/400x400/?human?sig=${index}${index}"
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.postList![index].name),
                        Text(
                          widget.postList![index].location,
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      size: 30,
                      Icons.more_horiz,
                    )
                  ]),
                ),
                Image.network(
                  // "https://source.unsplash.com/random/400x400?sig=$index",
                  "https://source.unsplash.com/400x400/?tech?sig=${index}",
                  // widget.postList![index].imageUrl,
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
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.heart,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.comment,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.share,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.save,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " ${widget.postList![index].likes} likes",
                          textAlign: TextAlign.left,
                        ),
                        Text.rich(
                          TextSpan(
                              text: "${widget.postList![index].name} ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text:
                                    "Hey!, I am in ${widget.postList![index].location}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        )
                      ],
                    ),
                  ),
                ])
              ],
            ),
          );
        },
        itemCount: widget.postList?.length,
      ),
    );
  }
}
