import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart'; //json_serializable 의 fromJson 및 toJson 기능

@freezed
class Exercise with _$Exercise {
  @Assert('name.length < 15', '운동이름 15자 이상이 되면 안됩니다.')
  factory Exercise({
    required String name,
    required int restTime,
  }) = _Exercise;

  Exercise._();
  get nameLength => name.length;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
