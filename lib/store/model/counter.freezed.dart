// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Counter _$CounterFromJson(Map<String, dynamic> json) {
  return _Counter.fromJson(json);
}

/// @nodoc
mixin _$Counter {
  int get nonSavedNumber => throw _privateConstructorUsedError;
  int get savedNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterCopyWith<Counter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterCopyWith<$Res> {
  factory $CounterCopyWith(Counter value, $Res Function(Counter) then) =
      _$CounterCopyWithImpl<$Res, Counter>;
  @useResult
  $Res call({int nonSavedNumber, int savedNumber});
}

/// @nodoc
class _$CounterCopyWithImpl<$Res, $Val extends Counter>
    implements $CounterCopyWith<$Res> {
  _$CounterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonSavedNumber = null,
    Object? savedNumber = null,
  }) {
    return _then(_value.copyWith(
      nonSavedNumber: null == nonSavedNumber
          ? _value.nonSavedNumber
          : nonSavedNumber // ignore: cast_nullable_to_non_nullable
              as int,
      savedNumber: null == savedNumber
          ? _value.savedNumber
          : savedNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterImplCopyWith<$Res> implements $CounterCopyWith<$Res> {
  factory _$$CounterImplCopyWith(
          _$CounterImpl value, $Res Function(_$CounterImpl) then) =
      __$$CounterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int nonSavedNumber, int savedNumber});
}

/// @nodoc
class __$$CounterImplCopyWithImpl<$Res>
    extends _$CounterCopyWithImpl<$Res, _$CounterImpl>
    implements _$$CounterImplCopyWith<$Res> {
  __$$CounterImplCopyWithImpl(
      _$CounterImpl _value, $Res Function(_$CounterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonSavedNumber = null,
    Object? savedNumber = null,
  }) {
    return _then(_$CounterImpl(
      nonSavedNumber: null == nonSavedNumber
          ? _value.nonSavedNumber
          : nonSavedNumber // ignore: cast_nullable_to_non_nullable
              as int,
      savedNumber: null == savedNumber
          ? _value.savedNumber
          : savedNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterImpl with DiagnosticableTreeMixin implements _Counter {
  const _$CounterImpl(
      {required this.nonSavedNumber, required this.savedNumber});

  factory _$CounterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CounterImplFromJson(json);

  @override
  final int nonSavedNumber;
  @override
  final int savedNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Counter(nonSavedNumber: $nonSavedNumber, savedNumber: $savedNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Counter'))
      ..add(DiagnosticsProperty('nonSavedNumber', nonSavedNumber))
      ..add(DiagnosticsProperty('savedNumber', savedNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterImpl &&
            (identical(other.nonSavedNumber, nonSavedNumber) ||
                other.nonSavedNumber == nonSavedNumber) &&
            (identical(other.savedNumber, savedNumber) ||
                other.savedNumber == savedNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nonSavedNumber, savedNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterImplCopyWith<_$CounterImpl> get copyWith =>
      __$$CounterImplCopyWithImpl<_$CounterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterImplToJson(
      this,
    );
  }
}

abstract class _Counter implements Counter {
  const factory _Counter(
      {required final int nonSavedNumber,
      required final int savedNumber}) = _$CounterImpl;

  factory _Counter.fromJson(Map<String, dynamic> json) = _$CounterImpl.fromJson;

  @override
  int get nonSavedNumber;
  @override
  int get savedNumber;
  @override
  @JsonKey(ignore: true)
  _$$CounterImplCopyWith<_$CounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
