import 'package:flutter/material.dart';

import '../Controller/APIController.dart';

class PostItem extends StatefulWidget {
  String? title, body;
  int? comment_count;

  PostItem({required this.title, required this.body, this.comment_count});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  int? comment_count;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return comment_count == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Text('M'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        widget.title?.substring(0, 10) ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.body ?? ''),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(child: Icon(Icons.thumb_up)),
                    Expanded(child: Column(
                      children: [
                        Icon(Icons.comment),
                        Text(comment_count.toString())
                      ],
                    )),
                    Expanded(child: Icon(Icons.screen_share))
                  ],
                )
              ],
            ),
          );
  }
}
