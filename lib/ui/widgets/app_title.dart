import 'package:flutter/cupertino.dart';
import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class AppTitle extends StatelessWidget {
  final String titleText;
  final TextStyle? textStyles;
  final double? padding;

  AppTitle({required this.titleText,this.textStyles,this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding??0,
      ),
      child: Text(
        titleText,
        style: textStyles??TextStyles.pageTitle(fontWeight: FontWeight.bold, color: Palette.colorPrimaryTextG90),
      ),
    );
  }
}
