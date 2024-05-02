import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mtask/features/dashboard/modules/users/model/repo/firebase_data.dart';
import 'package:mtask/features/dashboard/modules/users/model/user_model.dart';

part 'user_cubit_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserLoading()) {
    init();
  }

  List<UserModel> users = [];
  Future<void> init() async {
    emit(UserLoading());
    
    users = await FirebaseRepo.instance.fetch();
    if (users.isEmpty) {
      emit(UserEmpty());
    } else {
      emit(UserLoaded());
    }
  }
}