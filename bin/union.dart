import "package:freezed_annotation/freezed_annotation.dart";
part "union.freezed.dart";
void main(List<String> arguments) {
  const resultSuccess = new Result.success(100);
}
@freezed
class Result with _$Result {
  const Result._();
  const factory = Result.success(int value) = _Success;
  const factory = Result.failure(String error) = _Failure;
}

class SuperClass<T> {
  late final T myField;

  SuperClass({required this.myField});
}

class SubClass1 extends SuperClass<String> {
  final int x = 1;
  SubClass1({required String name}) : super(myField: name);
}

class SubClass2 extends SuperClass<bool> {
  final int y = 2;
  SubClass2({required bool isAdmin}) : super(myField: isAdmin);
}

class SubClass3 extends SuperClass<int> {
  final int z = 3;
  SubClass3({required int age}) : super(myField: age);
}
