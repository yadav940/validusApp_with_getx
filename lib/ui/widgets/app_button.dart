import 'package:flutter/material.dart';

import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final ButtonStyle? style;
  final Widget? child;
  final double? height;

  AppButton(
      {this.child,
      required this.onPressed,
      this.text = '',
      this.style,
      this.textStyle,
      this.height,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            child: child ??
                Padding(
                  padding: EdgeInsets.only(
                      top: (height ?? 82-50) / 2, bottom: (height ?? 82-50) / 2),
                  child: Text(
                    text,
                    style: textStyle ??
                        TextStyles.sp20(
                            color: Palette.cardBg,),
                  ),
                ),
            style: style ??
                ElevatedButton.styleFrom(
                  primary: Palette.buttonBg, // background
                  onPrimary: Colors.transparent, // foreground
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),

          ),
        ),
      ],
    );
  }
}
