import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainapp/Controller/APIController.dart';
import 'package:trainapp/Models/PostModel.dart';
import 'package:trainapp/Widgits/PostItem.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<PostModel>? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    APIController.apiController.getAllPosts().then((value) {
      data=value;
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(
          icon: Icon(Icons.request_page),
          onPressed: (){
            APIController.apiController.getAllPosts();
          },
        )],
      ),
      body: data==null?Center(child: CircularProgressIndicator(),):
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: data?.length??0,
            itemBuilder: (context,index){
              return PostItem(
                  title:data?[index].title,
                  body:data?[index].body,
              comment_count:getPostsCount(data?[index].id),);
            },
          )
    );
  }


  Future<PostModel> getPostById(int id) async{
    var url=Uri.parse('https://jsonplaceholder.typicode.com/posts/$id');
    var respone=await http.get(url);
    return PostModel.fromJson(jsonDecode(respone.body));
  }
   Future<List<PostModel>> getAllPosts() async{
    var url=Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var respone=await http.get(url);
    var list=jsonDecode(respone.body);
    return list.map((e) {
      return PostModel.fromJson(e);
    } ).toList();
  }

  Future<int> getPostsCount(int post_id) async{
    return await APIController.apiController.getPostsCommentNumber(post_id);
  }
}
