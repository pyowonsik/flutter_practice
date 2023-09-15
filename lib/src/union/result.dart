import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
class Result with _$Result {
  const Result._();
  const factory Result.big(int number) = _Big;
  const factory Result.small(int number) = _Small;
}
