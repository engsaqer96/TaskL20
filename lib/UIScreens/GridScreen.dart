import 'package:flutter/material.dart';
import 'package:trainapp/Widgits/GridItem.dart';

import '../Widgits/ListItem.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home title'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink.shade400,
                Colors.pink.shade900
              ]
            )
          ),
        ),
        ),
      drawer: Drawer(),
      body:ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListItem(),
          ListItem(),
        ],
      )
    );
  }
}
