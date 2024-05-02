import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtask/features/auth/login/view/page/login_page.dart';
import 'package:mtask/features/auth/registration/controller/cubit/registration_cubit.dart';
import 'package:mtask/features/dashboard/modules/users/model/repo/local_db_data.dart';

class BottomNavigationWidget extends StatelessWidget {
  BottomNavigationWidget({super.key, required this.controller});

  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: controller,
        child: BlocBuilder<RegistrationCubit, RegistrationState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color.fromARGB(255, 56, 118, 253), Color.fromARGB(255, 50, 199, 99)],
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                        onPressed: () async {
                          await (await DatabaseRepo.instance).insert(name: 'Mohamed', email: 'mohamedali@gmail.com');

                          print("added successfully");

                          await controller.addUser();
                        },
                        child: const Text("Create account")),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: const Text(
                      "login",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ]),
              ],
            ),
          );
        }));
  }
}
