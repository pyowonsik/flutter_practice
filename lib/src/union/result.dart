import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
class Result with _$Result {
  const Result._();
  const factory Result.success(int number) = _Success;
  const factory Result.failure(String error) = _Failure;
}
