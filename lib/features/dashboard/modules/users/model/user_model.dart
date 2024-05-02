class UserModel {
  String? id;
  String? name;
  String? email;
    String? image;
  String? date;

  UserModel({this.id, this.email, this.name,this.date,this.image});

  UserModel.fromJson(Map map) {
    id = map['id'].toString();
    email = map['email'];
    name = map['name'];
    image = map['image'];
    date = map['date'];
  }
}
