import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.g.dart';
part 'pagination_model.freezed.dart';

@freezed
class PaginationModel with _$PaginationModel {
  factory PaginationModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
