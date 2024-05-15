import "package:freezed_annotation/freezed_annotation.dart";
part "union-class.freezed.dart";

void main(List<String> arguments) {
  const resultSuccess = Result.success(200);

  // print(resultSuccess.maybeWhen(
  //   orElse: () => "",
  //   failure: (err) => "Oh no, Error:$err",
  // ));

  //  print(resultSuccess.when(
  //   success: (value) => "Yes i got the data $value",
  //   failure: (err) => "Oh no, Error:$err",
  //   loading: () => "wait, im getting the data you need",
  // ));

  print(resultSuccess.map(
    success: (success) => "Yes i got the data ${success.value}",
    failure: (failure) => "Oh no, Error ${failure.error}",
    loading: (loading) => "wait, im getting the data you need ${loading}",
  ));

  print(resultSuccess.maybeMap(
    orElse: () => "",
    success: (success) => "Yes i got the data ${success.value}",
  ));
}

@freezed
class Result with _$Result {
  const Result._();
  const factory Result.success(int value) = _Success;
  const factory Result.failure(String error) = _Failure;
  const factory Result.loading() = _Loading;
}
