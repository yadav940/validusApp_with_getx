
import 'package:flutter/cupertino.dart';
import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

import '../usefull/palette.dart';

class AppCard extends StatelessWidget {
  //const AppCard({Key? key}) : super(key: key);
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? bgColor;

  AppCard({required this.child,this.padding,this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
              color: Palette.black.withOpacity(0.075),
              offset: Offset(0, 2),
              blurRadius: 4)
        ],
        color: bgColor??Palette.colorWhite,
      ),
      padding: padding??EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child:child ,
    );
  }
}
