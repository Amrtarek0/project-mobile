import 'package:flutter/material.dart';
import 'package:mtask/features/auth/registration/controller/cubit/registration_cubit.dart';
import 'package:mtask/features/auth/registration/view/components/bottom_widget.dart';
import 'package:mtask/features/auth/registration/view/components/required_data_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegestrationPage extends StatelessWidget {
  const RegestrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<RegistrationCubit>(
        create: (context) => RegistrationCubit(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            final RegistrationCubit controller =
                context.read<RegistrationCubit>();
            return Scaffold(
              body: RequiredDataWidget(
                controller: controller,
              ),
              bottomNavigationBar:
                  SizedBox(height: 100, child: BottomNavigationWidget(controller: controller,)),
            );
          },
        ),
      ),
    );
  }
}
