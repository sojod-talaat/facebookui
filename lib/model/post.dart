class Post {
  String? content;
  String? image;
  int? noLikes;
  Post.forMap(Map<String, dynamic> data) {
    content = data['content'];
    image = data['image'];
    noLikes = data['nolikes'];
  }
}
