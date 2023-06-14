import 'package:dio/dio.dart';
import 'package:trainapp/Models/CommentModel.dart';
import 'package:trainapp/Models/PostModel.dart';
//[{},{},{}] json array , {} json object
class APIController {
  static final String BASE_URL="https://jsonplaceholder.typicode.com";
  APIController._();
  static APIController apiController=APIController._();
   Dio _getDio(){
     return Dio(BaseOptions(
       baseUrl: BASE_URL,
       connectTimeout: Duration(seconds: 60),
       receiveTimeout: Duration(seconds: 60),
       sendTimeout: Duration(seconds: 60),
       headers: {'Authorization':'dskdjlasjdlkjkasljdlkasjdlkas,z'}
     ));
   }
    Future<List<PostModel>>getAllPosts() async{
    var response=await _getDio().get('/posts');
    return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
  }
  Future<List<CommentModel>> getAllComments() async{
    var response=await _getDio().get('/comments');
    return (response.data as List).map((e) => CommentModel.fromJson(e)).toList();
  }
  Future<List<CommentModel>> getCommentsByPostId(int post_id) async{
    var response=await _getDio().get('/comments',
    queryParameters: {'postId':post_id});
    return (response.data as List).map((e) => CommentModel.fromJson(e)).toList();
  }
}