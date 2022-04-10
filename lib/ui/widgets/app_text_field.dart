import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class AppTextField extends StatelessWidget {
  //const AppButton({Key? key}) : super(key: key);
  final String? hintText;
  final TextEditingController textController;
  final Color borderColor;
  final ValueChanged<String>? onChange;
  final TextInputType inputType;

  final bool autofocus;

  final List<TextInputFormatter>? inputFormatters;

  final TextAlign? textAlign;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;
  final String? prefixText;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  AppTextField(
      {this.prefixIcon,
      this.hintText,
      this.suffixIcon,
      required this.textController,
      this.borderColor = Palette.greyScaleDark7,
      this.onChange,
      this.inputType = TextInputType.text,
      this.autofocus = false,
      this.inputFormatters,
      this.textAlign,
      this.textStyle,
      this.prefixText,
      this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
      ),
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 10,
          ),
          if (inputType == TextInputType.phone)
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                //SvgPicture.asset(AssetConstants.icFlagIndia),
                const SizedBox(
                  width: 5,
                ),
                Text('+91'),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  color: Palette.greyScaleDark7,
                  height: 40,
                  width: 1,
                ),
                const SizedBox(
                  width: 7,
                ),
              ],
            ),
          Expanded(
            child: TextField(
              keyboardType: inputType,
              style: textStyle ?? TextStyles.sp16(),
              controller: textController,
              textAlign: textAlign ?? TextAlign.left,
              autofocus: autofocus,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: hintStyle ??
                      TextStyles.sp16(color: Palette.greyScaleDark7),
                  suffixIcon: suffixIcon,
                  prefixText: prefixText,
                  prefixIcon: prefixIcon),
              onChanged: onChange,
            ),
          ),
        ],
      ),
    );
  }
}
