import 'package:beaver_dev/common/util/paddings.dart';
import 'package:beaver_dev/common/widgets/round_button.dart';
import 'package:beaver_dev/common/widgets/title_text.dart';
import 'package:beaver_dev/constants/colors.dart';
import 'package:beaver_dev/logic/random.dart';
import 'package:beaver_dev/store/state/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateTestScreen extends ConsumerWidget {
  const StateTestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterValue = ref.watch(counterNotifierProvider);
    final counterFunc = ref.watch(counterNotifierProvider.notifier);

    return Scaffold(
      body: Padding(
        padding: BasePaddings.all(30),
        child: Column(
          children: [
            Padding(
              padding: BasePaddings.all(10),
              child: const TitleText(text: "Hello. 안녕하세요.\n상태 테스트 페이지입니다."),
            ),
            TitleText(text: counterValue.nonSavedNumber.toString()),
            Padding(
              padding: BasePaddings.all(5),
              child: RoundButton(
                func: () {
                  int num = getRandomNumber();
                  counterFunc.setNonsaved(num);
                },
                buttonColor: BaseColors.primary,
                text: "Random!",
              ),
            ),
            TitleText(text: counterValue.savedNumber.toString()),
            Padding(
              padding: BasePaddings.all(5),
              child: RoundButton(
                func: () {
                  int num = getRandomNumber();
                  counterFunc.setSaved(num);
                },
                buttonColor: BaseColors.secondary,
                text: "Random!",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
