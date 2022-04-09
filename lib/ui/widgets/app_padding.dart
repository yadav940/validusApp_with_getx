
import 'package:flutter/cupertino.dart';

class AppPadding extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Widget child;


  AppPadding({this.padding= const EdgeInsets.only(left: 12.0,right: 12), required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:padding,
      child:child
    );
  }
}
