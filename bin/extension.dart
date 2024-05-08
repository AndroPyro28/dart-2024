import 'dart:ffi';

void main(List<String> arguments) {
  // final duplicatedString = "Hello world".duplicated;

  print("racecar".isPalindrome());
}


extension StringDuplication on String {
  bool isPalindrome() {
    final length = this.length - 1;

    for (var i = 0; i < length; i++) {
      if(this[i] != this[length  - i]) return false;
    }
    
    return true;
  }

  String  get duplicated {
    return this + this;
  }
}