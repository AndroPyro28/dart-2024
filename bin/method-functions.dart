import "string-methods.dart";
void main(List<String> arguments) {
  // String formattedName = formatName("AnDrO", "eUgeNiO");
  // String formattedName = myFunc(onTap: formatName);
  // print(formattedName);

  // myFunction2(10, 11, "Yvenne Santos");

final exPlusFive = intFunction((int x) {
  return x + x;
})(5);

  print(exPlusFive);
}

int myIntFunc (int x) {
  return x;
}

String formatName (String firstname, String lastname) {
  return "${firstname.toLowerCase().capitalize()} ${lastname.toLowerCase().capitalize()}";
}

myFunc({required Function onTap}){
   return onTap("Andro", "Eugenio");
}

myFunction2 (int x, int y,[String? name = "Andro Eugenio"]) {
  print("$x $y $name");
}

int Function(int) intFunction(int Function(int) f) {
  return (int x) {
    return f(f(x));
  };
}
