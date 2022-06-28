import 'package:gsg/model/post.dart';
import 'package:gsg/model/user.dart';

class postresposs {
  User? user;
  Post? post;
  postresposs.fromMap(Map<String, dynamic> data) {
    user = User.fromMap(data['user']);
    post = Post.forMap(data['post']);
  }
}
