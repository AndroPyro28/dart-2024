import 'dart:convert';

import 'package:http/http.dart';

Future<void> main(List<String> arguments) async {
  try {
    createMessageStream()
    .map((message) => message.toUpperCase())
    .where((message) => message != "HELLO!")
    .listen((event) {
      print(event);
    });
  } catch (e) {
    print(e);
  }
}

Stream<String> createMessageStream() async* {
  // yield - returning data without terminating whole function 
  print("start");
  await Future.delayed(const Duration(seconds: 2));
  yield "hello!";

  await Future.delayed(const Duration(seconds: 2));
  yield "have you heard of flutter?";
  print("end");

}