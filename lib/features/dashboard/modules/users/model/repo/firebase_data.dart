// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mtask/features/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:mtask/features/dashboard/modules/users/model/user_model.dart';

class FirebaseRepo extends ParentRepo {
  static FirebaseRepo instance = FirebaseRepo._init();

  FirebaseRepo._init();

  @override
  Future<List<UserModel>> fetch() async {
    /// https://firebase.flutter.dev/docs/firestore/usage
    return await FirebaseFirestore.instance.collection('users').get().then((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((e) {
        final Map data = e.data() as Map;

        Map m = {
          'name': data.containsKey('name') ? data['name'] : "XX",
          'email': data.containsKey('email') ? data['email'] : "XXXX",
          'id': e.reference.id,
          'image':data.containsKey('image') ? data['image'] : "XXXX",
          'date':data.containsKey('date') ? data['date'] : "XX/XX/XXXX",
        };
        return UserModel.fromJson(m);
      }).toList();
    });
  }

  @override
  Future<void> delete({required int id}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.doc(id.toString()).update({'company': 'Stokes and Sons'}).then((_) => print("User Updated"));
    // .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  Future<void> insert({required String name, String? email}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users
        .add({
          'full_name': name, 
          'email': email, 
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
