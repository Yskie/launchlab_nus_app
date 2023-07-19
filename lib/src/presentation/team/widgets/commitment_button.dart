import 'package:flutter/material.dart';
import 'package:launchlab/src/config/app_theme.dart';
import 'package:launchlab/src/presentation/common/widgets/useful.dart';

class CommitmentButton extends StatelessWidget {
  final String text;
  final cubit;
  final String newLevel;
  const CommitmentButton(
      {super.key,
      required this.text,
      required this.cubit,
      required this.newLevel});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: cubit.state.commitmentInput == newLevel
                ? blackColor
                : lightGreyColor),
        onPressed: () {
          cubit.onCommitmentChanged(newLevel);
        },
        child: bodyText(text,
            size: 12.0,
            color: cubit.state.commitmentInput == newLevel
                ? whiteColor
                : blackColor));
  }
}
