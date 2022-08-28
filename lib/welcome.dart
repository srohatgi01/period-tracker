import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:period_tracker/cubit/greet_name_cubit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: BlocBuilder<GreetNameCubit, GreetNameState>(
          builder: (context, state) {
            if (state is GreetName) {
              return Text("Welcome ${state.name},");
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
