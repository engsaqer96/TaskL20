import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.network('https://th.bing.com/th/id/OIP.a1UoDXLKH8_fhSNszvOEtAHaE_?pid=ImgDet&rs=1'),
          )
        ],
      ),
    );
  }
}
