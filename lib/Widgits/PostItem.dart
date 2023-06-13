import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  String? title,body;
   PostItem({required this.title,required this.body});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Row( children: [
            CircleAvatar(child: Text('M'),),
            SizedBox(width: 10,),
            Container(
              child: Text(title?.substring(0,10)??'',overflow: TextOverflow.ellipsis,
                maxLines: 1,),
            )

          ],),
          SizedBox(height: 10,),
          Text(body??''),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
