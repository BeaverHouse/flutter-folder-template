import 'package:beaver_dev/store/model/counter.dart';
import 'package:beaver_dev/store/state/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part "counter_state.g.dart";

const _savedNumberKey = "savedNum";

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  Counter build() {
    int nonSavedNumber = 0;
    SharedPreferences sharedPreferences = ref.read(getPrefsProvider);
    int savedNumber = sharedPreferences.getInt(_savedNumberKey) ?? 0;
    return Counter(nonSavedNumber: nonSavedNumber, savedNumber: savedNumber);
  }

  void setNonsaved(int num) => state = state.copyWith(nonSavedNumber: num);
  void setSaved(int num) async {
    SharedPreferences sharedPreferences = ref.read(getPrefsProvider);
    await sharedPreferences.setInt(_savedNumberKey, num);
    state = state.copyWith(savedNumber: num);
  }
}
