void main(List<String> arguments) {
  List<int> intList = [1, 2, 3];
  final sum = intList.fold(6, (total, element) => total + element);
  final firstElement = intList[0];
  print(sum);

  late String sum1;
  final myMap = new Map<String, dynamic>();

  myMap['hello'] = 50;
  myMap['work'] = 100;
  print(myMap);

  final mySet = new Set<int>();

  mySet.add(10);
  mySet.add(11);
  mySet.add(11);

  print(mySet);

  myMap.forEach((key, value) {
    print("$key $value");
  });
  // with const they will be the same memory allocation
  // class will only instanciated only one time
  User myUser1 = const User(name: 'john doe', photoUrl: 'http://example.com/abcd');
  User myUser2 = const User(name: 'john doe', photoUrl: 'http://example.com/abcd');
  
  print(myUser1 == myUser2);

  print(myUser1.hasLongName());
}

class User {
  final String name;
  final String photoUrl;

  const User({required this.name, required this.photoUrl});

  bool hasLongName () {
    return this.name.length > 3;
  }
}
