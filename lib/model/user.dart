class User {
  String? name;
  String? image;
  User.fromMap(Map<String, dynamic> data) {
    name = data['name'];
    image = data['image'];
  }
}
