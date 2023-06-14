import 'package:flutter/material.dart';

class FacebookPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'June 14 at 12:00 PM',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Image.network(
                    'https://img.freepik.com/premium-photo/nice-cute-kittens-digital-realistic-illustration-front-face-baby-cat-with-nice-lighting_510654-340.jpg?w=740',
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      SizedBox(width: 8.0),
                      Text('Like'),
                      SizedBox(width: 16.0),
                      Icon(Icons.comment),
                      SizedBox(width: 8.0),
                      Text('Comment'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}