// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result {
  int get number => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) big,
    required TResult Function(int number) small,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number)? big,
    TResult? Function(int number)? small,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? big,
    TResult Function(int number)? small,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Big value) big,
    required TResult Function(_Small value) small,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Big value)? big,
    TResult? Function(_Small value)? small,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Big value)? big,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BigCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_BigCopyWith(_$_Big value, $Res Function(_$_Big) then) =
      __$$_BigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$_BigCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res, _$_Big>
    implements _$$_BigCopyWith<$Res> {
  __$$_BigCopyWithImpl(_$_Big _value, $Res Function(_$_Big) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_Big(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Big extends _Big {
  const _$_Big(this.number) : super._();

  @override
  final int number;

  @override
  String toString() {
    return 'Result.big(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Big &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BigCopyWith<_$_Big> get copyWith =>
      __$$_BigCopyWithImpl<_$_Big>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) big,
    required TResult Function(int number) small,
  }) {
    return big(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number)? big,
    TResult? Function(int number)? small,
  }) {
    return big?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? big,
    TResult Function(int number)? small,
    required TResult orElse(),
  }) {
    if (big != null) {
      return big(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Big value) big,
    required TResult Function(_Small value) small,
  }) {
    return big(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Big value)? big,
    TResult? Function(_Small value)? small,
  }) {
    return big?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Big value)? big,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  }) {
    if (big != null) {
      return big(this);
    }
    return orElse();
  }
}

abstract class _Big extends Result {
  const factory _Big(final int number) = _$_Big;
  const _Big._() : super._();

  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_BigCopyWith<_$_Big> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SmallCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_SmallCopyWith(_$_Small value, $Res Function(_$_Small) then) =
      __$$_SmallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$_SmallCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res, _$_Small>
    implements _$$_SmallCopyWith<$Res> {
  __$$_SmallCopyWithImpl(_$_Small _value, $Res Function(_$_Small) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_Small(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Small extends _Small {
  const _$_Small(this.number) : super._();

  @override
  final int number;

  @override
  String toString() {
    return 'Result.small(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Small &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmallCopyWith<_$_Small> get copyWith =>
      __$$_SmallCopyWithImpl<_$_Small>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) big,
    required TResult Function(int number) small,
  }) {
    return small(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number)? big,
    TResult? Function(int number)? small,
  }) {
    return small?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? big,
    TResult Function(int number)? small,
    required TResult orElse(),
  }) {
    if (small != null) {
      return small(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Big value) big,
    required TResult Function(_Small value) small,
  }) {
    return small(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Big value)? big,
    TResult? Function(_Small value)? small,
  }) {
    return small?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Big value)? big,
    TResult Function(_Small value)? small,
    required TResult orElse(),
  }) {
    if (small != null) {
      return small(this);
    }
    return orElse();
  }
}

abstract class _Small extends Result {
  const factory _Small(final int number) = _$_Small;
  const _Small._() : super._();

  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_SmallCopyWith<_$_Small> get copyWith =>
      throw _privateConstructorUsedError;
}
