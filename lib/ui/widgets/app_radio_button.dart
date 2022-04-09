import 'package:flutter/cupertino.dart';

class AppRadioButton extends StatelessWidget {
  final bool isSelected;

  AppRadioButton(this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 1,
              left: 1,
              child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(201, 204, 207, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.elliptical(22, 22)),
                  ))),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 108, 249, 0.30000001192092896),
                      offset: Offset(1, 1.600000023841858),
                      blurRadius: 2)
                ],
                color: isSelected?Color.fromRGBO(75, 181, 67, 1):Color.fromRGBO(201, 204, 207, 1),
                borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
