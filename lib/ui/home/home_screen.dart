import 'package:beaver_dev/common/util/func.dart';
import 'package:beaver_dev/common/util/sized_box.dart';
import 'package:beaver_dev/common/widgets/round_button.dart';
import 'package:beaver_dev/common/widgets/title_text.dart';
import 'package:beaver_dev/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            const TitleText(
              text:
                  "Hello. This is test app.\nThis text is small and aligned left",
              fontSize: 16,
              isBold: false,
              align: TitleEnum.left,
            ),
            verticalBox(10),
            const TitleText(
              text: "This is original title widget.\nCompare!",
            ),
            verticalBox(30),
            RoundButton(
              func: () => context.go("/button"),
              buttonColor: BaseColors.primary,
              text: "See Buttons",
            ),
            verticalBox(30),
            RoundButton(
              func: () => context.go("/state_test"),
              buttonColor: BaseColors.primary,
              text: "See State Test",
            ),
          ],
        ),
      ),
    );
  }
}
