# Dev Flutter App

### Folder Structure

Inspired by [zubairehman/flutter_boilerplate_project][ref1]

```
lib/
|- common/
    |- util/
    |- widgets/
|- constants/
|- logic/
|- store/
|- ui/
    |- home/
    |- foo/
    |- bar/
    |- or something...
|- main.dart
|- routes.dart
```

#### Create Project

```
flutter create --org com.test .
```

<br>

#### To use [freezed][ref7]

1. Write some class file

```flutter
# store/model/counter.dart

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
```

2. Run the code generater with following command

```
dart run build_runner build -d
```

#### To use [flutter_riverpod][ref4]

1. Run the code-generator with `dart run build_runner watch`.
2. You can experience code generation! Here's example:

```flutter
# store/state/counter_state.dart

import 'package:beaver_dev/store/model/counter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part "counter_state.g.dart";

const _savedNumberKey = "savedNum";

@riverpod
class CounterNotifier extends _$CounterNotifier {
  late final SharedPreferences sharedPreferences;

  @override
  Counter build() => Counter(
      nonSavedNumber: 0,
      savedNumber: sharedPreferences.getInt(_savedNumberKey) ?? 0);

  void setNonsaved(int num) => state = state.copyWith(nonSavedNumber: num);
  void setSaved(int num) async {
    await sharedPreferences.setInt(_savedNumberKey, num);
    state = state.copyWith(savedNumber: num);
  }
}
```

Also, you can generate code with `dart run build_runner build`, like `freezed`.

<br>

#### Dependencies

- [flutter_screenutil][ref2]
- [go_router][ref3]
- [flutter_riverpod][ref4]
- [shared_preferences][ref5]
- [mask_text_input_formatter][ref6]
- [freezed][ref7]

[ref1]: https://github.com/zubairehman/flutter_boilerplate_project
[ref2]: https://pub.dev/packages/flutter_screenutil
[ref3]: https://pub.dev/packages/go_router
[ref4]: https://pub.dev/packages/flutter_riverpod
[ref5]: https://pub.dev/packages/shared_preferences
[ref6]: https://pub.dev/packages/mask_text_input_formatter
[ref7]: https://pub.dev/packages/freezed
