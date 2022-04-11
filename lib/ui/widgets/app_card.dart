import 'package:flutter/cupertino.dart';

import '../usefull/palette.dart';

class AppCard extends StatelessWidget {
  Widget child;

  var padding16 = const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);

  AppCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Container(
        color: Palette.cardBg,
        padding: padding16,
        child: child,
      ),
    );
  }
}
