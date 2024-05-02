// ignore_for_file: avoid_types_as_parameter_names

import 'package:mtask/features/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:mtask/features/dashboard/modules/users/model/user_model.dart';

class APIsRepo extends ParentRepo {

  @override
  Future<void> delete({required num id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }
  @override
  Future<List<UserModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<void> insert({required String name, String? email}) {
    // TODO: implement insert
    throw UnimplementedError();
  }
}
