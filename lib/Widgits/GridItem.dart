import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink.shade800,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(

        children: [
          Expanded(child: Center(child: Icon(Icons.edit,color: Colors.white,
          size: 50),))
          ,
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            width: double.maxFinite,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.3),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10)
              )
            ),
            child: Text('Title',style: TextStyle(color: Colors.white),
         ),
          )
        ],
      ),
    );
  }
}
