import 'package:flutter/material.dart';

import 'GridItem.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
              child: Text('HEADER 1',style:TextStyle(color: Colors.pink.shade800,fontSize: 20),)),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return GridItem();
            },
          ),
        ],
      ),
    );
  }
}
