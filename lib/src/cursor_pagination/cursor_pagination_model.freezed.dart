// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CursorPaginationModel _$CursorPaginationModelFromJson(
    Map<String, dynamic> json) {
  return _CursorPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$CursorPaginationModel {
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CursorPaginationModelCopyWith<CursorPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursorPaginationModelCopyWith<$Res> {
  factory $CursorPaginationModelCopyWith(CursorPaginationModel value,
          $Res Function(CursorPaginationModel) then) =
      _$CursorPaginationModelCopyWithImpl<$Res, CursorPaginationModel>;
  @useResult
  $Res call({String author, String title});
}

/// @nodoc
class _$CursorPaginationModelCopyWithImpl<$Res,
        $Val extends CursorPaginationModel>
    implements $CursorPaginationModelCopyWith<$Res> {
  _$CursorPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CursorPaginationModelCopyWith<$Res>
    implements $CursorPaginationModelCopyWith<$Res> {
  factory _$$_CursorPaginationModelCopyWith(_$_CursorPaginationModel value,
          $Res Function(_$_CursorPaginationModel) then) =
      __$$_CursorPaginationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String author, String title});
}

/// @nodoc
class __$$_CursorPaginationModelCopyWithImpl<$Res>
    extends _$CursorPaginationModelCopyWithImpl<$Res, _$_CursorPaginationModel>
    implements _$$_CursorPaginationModelCopyWith<$Res> {
  __$$_CursorPaginationModelCopyWithImpl(_$_CursorPaginationModel _value,
      $Res Function(_$_CursorPaginationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
  }) {
    return _then(_$_CursorPaginationModel(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CursorPaginationModel implements _CursorPaginationModel {
  _$_CursorPaginationModel({required this.author, required this.title});

  factory _$_CursorPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CursorPaginationModelFromJson(json);

  @override
  final String author;
  @override
  final String title;

  @override
  String toString() {
    return 'CursorPaginationModel(author: $author, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CursorPaginationModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CursorPaginationModelCopyWith<_$_CursorPaginationModel> get copyWith =>
      __$$_CursorPaginationModelCopyWithImpl<_$_CursorPaginationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CursorPaginationModelToJson(
      this,
    );
  }
}

abstract class _CursorPaginationModel implements CursorPaginationModel {
  factory _CursorPaginationModel(
      {required final String author,
      required final String title}) = _$_CursorPaginationModel;

  factory _CursorPaginationModel.fromJson(Map<String, dynamic> json) =
      _$_CursorPaginationModel.fromJson;

  @override
  String get author;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CursorPaginationModelCopyWith<_$_CursorPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
