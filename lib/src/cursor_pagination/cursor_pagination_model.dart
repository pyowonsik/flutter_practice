import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_pagination_model.g.dart';
part 'cursor_pagination_model.freezed.dart';

@freezed
class CursorPaginationModel with _$CursorPaginationModel {
  factory CursorPaginationModel({
    required String author,
    required String title,
  }) = _CursorPaginationModel;

  factory CursorPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$CursorPaginationModelFromJson(json);
}
