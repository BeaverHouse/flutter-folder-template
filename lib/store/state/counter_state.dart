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
