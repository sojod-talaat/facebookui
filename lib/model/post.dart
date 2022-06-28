class Post {
  String? Content;
  String? image;
  int? nolikes;
  Post.forMap(Map<String, dynamic> data) {
    Content:
    data['Content'];
    image:
    data['image'];
    nolikes:
    data['nolikes'];
  }
}
