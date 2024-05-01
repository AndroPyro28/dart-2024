// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

void main(List<String> arguments) {

    final user = new User(firstname: "asd",lastname: "asda",);
}


class User {
  final String firstname;
  final String lastname;
  
  User ({
    required this.firstname,
    required this.lastname,
  });

  
}
