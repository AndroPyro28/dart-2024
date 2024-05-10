import "dart_application_2024.dart";
void main(List<String> arguments) {
  // String formattedName = formatName("AnDrO", "eUgeNiO");
  // String formattedName = myFunc(onTap: formatName);
  // print(formattedName);

  // myFunction2(10, 11, "Yvenne Santos");

// 5 + 5
final exPlusFive = intFunction((int x)  => (x * 2))(3);

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

typedef FunctionThatHaveAParameterAndReturnsInt = int Function(int);

 FunctionThatHaveAParameterAndReturnsInt intFunction(FunctionThatHaveAParameterAndReturnsInt f) {
  return (int x) {
    return f(f(x));
  };
}
