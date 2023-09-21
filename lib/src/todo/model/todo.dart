import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.g.dart';
part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required int id,
    required String title,
    required bool completed,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
