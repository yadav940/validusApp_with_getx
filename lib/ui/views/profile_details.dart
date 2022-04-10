

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../controller/validus_controller.dart';
import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class ProfileDetails extends StatelessWidget {
  ValidusController controller;

  ProfileDetails(this.controller);
  var padding16 = const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding16,
        child: Container(
        color: Palette.cardBg,
        padding: padding16,
        child: Column(
          children: [

            getItea('Name', 'ABC'),
            getItea('Email', 'ABC@bcd.com'),
            getItea('Address', 'ABC m,s,, '),

          ],
        )
    ));
  }
  Widget getItea(String title,String value){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyles.sp18(color: Palette.colorWhite),
              ),
              Text('Edit',style: TextStyles.sp20(color: Palette.colorWhite),)

            ],
          ),
          const SizedBox(height: 16,),

          Text(
            value,
            style: TextStyles.sp20(),
          ),

        ],
      ),
    );
  }
}
