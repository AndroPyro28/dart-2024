void main(List<String> arguments) {
  List<int> intList = [1, 2, 3];
  final sum = intList.fold(6, (total, element) => total + element);
  final firstElement = intList[0];
  print(sum);

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

}
