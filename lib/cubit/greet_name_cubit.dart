import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:math';

part 'greet_name_state.dart';

class GreetNameCubit extends Cubit<GreetNameState> {
  GreetNameCubit() : super(GreetNameInitial());

  void getGreetName() async {
    final FirebaseFirestore db = FirebaseFirestore.instance;
    String word = await db
        .collection("greetings")
        .doc("greeting-words")
        .get()
        .then((value) {
      var docData = value.data() as Map<String, dynamic>;
      var wordList = docData["wordsList"];
      int random = Random().nextInt(wordList.length);
      return wordList[random];
    });

    emit(GreetName(word));
  }
}
