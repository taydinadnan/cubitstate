import 'package:cubitstate/cubit/app_cubit_states.dart';
import 'package:cubitstate/pages/home_page.dart';
import 'package:cubitstate/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_cubits.dart';

class AppCubitLogics extends StatefulWidget {
  AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          }
          if (state is LoadedState) {
            return HomePage();
          }
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
