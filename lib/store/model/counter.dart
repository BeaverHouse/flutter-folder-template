import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'counter.freezed.dart';
part 'counter.g.dart';

@freezed
class Counter with _$Counter {
  const factory Counter({
    required int nonSavedNumber,
    required int savedNumber,
  }) = _Counter;

  factory Counter.fromJson(Map<String, Object?> json) =>
      _$CounterFromJson(json);
}
