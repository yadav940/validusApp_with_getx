import 'package:flutter/material.dart';

import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class AppButton extends StatelessWidget {
  //const AppButton({Key? key}) : super(key: key);
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
                        TextStyles.sp16(
                            color: Palette.colorWhite,
                            fontWeight: FontWeight.bold),
                  ),
                ),
            style: style ??
                ElevatedButton.styleFrom(
                  primary: Palette.buttonBackground, // background
                  onPrimary: Palette.colorWhite, // foreground
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),

            /*onPressed: _changeText,
        color: Colors.red,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.grey,*/
          ),
        ),
      ],
    );
  }
}

extension button on String {
  Widget get getButton {
    return AppButton(
      onPressed: () {},
      text: this,
    );
  }
}

class AppButtonWithBorder extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final Color? color;
  final VoidCallback? onPressed;
  final double? radius;
  final Widget? child;
  final double? height;

  AppButtonWithBorder(
      {this.text,
      this.textStyle,
      this.color,
      this.onPressed,
      this.child,
      this.height,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: text??'',
      textStyle: TextStyles.sp16(
          color: color??Palette.buttonBackground, fontWeight: FontWeight.w700),
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 0.5, color: Palette.buttonBackground),
        elevation: 0,
        primary: Palette.colorWhite,
        // background
        onPrimary: Palette.colorWhite,
        // foreground
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 12.0),
        ),
      ),
      child: child,
      height: height,
    );
  }
}
