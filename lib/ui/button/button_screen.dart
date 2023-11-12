import 'package:beaver_dev/common/widgets/round_button.dart';
import 'package:beaver_dev/common/widgets/title_text.dart';
import 'package:beaver_dev/constants/colors.dart';
import 'package:beaver_dev/common/util/paddings.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: BasePaddings.all(30),
        child: Column(
          children: [
            Padding(
              padding: BasePaddings.all(10),
              child: const TitleText(text: "Hello. 안녕하세요.\n이것은 버튼 페이지입니다."),
            ),
            Padding(
              padding: BasePaddings.all(5),
              child: RoundButton(
                func: () {},
                buttonColor: BaseColors.primary,
                text: "Infinity",
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: BasePaddings.onlyx(5),
                  child: RoundButton(
                    func: () {},
                    buttonColor: BaseColors.primaryDark,
                    text: "Small",
                    height: 30,
                    width: 70,
                    fontSize: 12,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: BasePaddings.onlyx(10),
                    child: RoundButton(
                      func: () {},
                      buttonColor: BaseColors.secondary,
                      text: "Big",
                      height: 80,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
