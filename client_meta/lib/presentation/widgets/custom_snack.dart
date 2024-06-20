import 'package:flutter/material.dart';
import 'package:nav_service/nav_service.dart';

class CustomSnack {
  static errorSnack(String message) {
    final BuildContext context  = NavService.contextNav;
final styleText = Theme.of(context).textTheme;
    ScaffoldMessenger.of(NavService.contextNav).clearSnackBars();
    ScaffoldMessenger.of(NavService.contextNav)
        .showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message, style: styleText.titleMedium),
              const Icon(Icons.warning_amber_rounded)
            ],
          )));
  }

   static showMessage(String message, {Color? backgroundColor, int? milliseconds}) {
    final BuildContext context  = NavService.contextNav;
    //final colors = Theme.of(context).colorScheme;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          duration:  Duration(milliseconds: milliseconds ?? 800),
          backgroundColor: backgroundColor,
          //backgroundColor: colors.secondaryContainer,
          content: SelectableText (message)));
  }
}
