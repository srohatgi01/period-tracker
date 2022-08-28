part of 'greet_name_cubit.dart';

@immutable
abstract class GreetNameState {}

class GreetNameInitial extends GreetNameState {}

class GreetName extends GreetNameState {
  final String name;
  GreetName(this.name);
}
