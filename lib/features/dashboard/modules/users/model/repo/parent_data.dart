import 'package:mtask/features/dashboard/modules/users/model/user_model.dart';

abstract class ParentRepo {
  Future<void> insert({required String name, String? email});
  Future<List<UserModel>> fetch();
  Future<void> delete({required int id});
}
