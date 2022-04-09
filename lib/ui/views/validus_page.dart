import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:validus/ui/views/stock_list.dart';

import '../../controller/validus_controller.dart';
import '../../utils/asset_const.dart';
import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class ValidusPage extends StatefulWidget {
  const ValidusPage({Key? key}) : super(key: key);

  @override
  State<ValidusPage> createState() => _ValidusPageState();
}

class _ValidusPageState extends State<ValidusPage> {
  var controller = Get.put(ValidusController());
  var selectedItemColor = const Color(0xFFFFB802);
  var unselectedItemColor = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xFF171734),
          elevation: 0,
          title: Obx(()=>Text(
            controller.selectedIndex==0?'My watchlist':'Profile',
            style: TextStyles.sp36(color: Palette.colorWhite),
          )),
        ),
        body: Obx(() => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : getBody),
        bottomNavigationBar: Obx(() => getBottomNavigationBar),
      ),
    );
  }

  Widget get getBottomNavigationBar {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetConst.chart,
            color: controller.selectedIndex.value == 0
                ? selectedItemColor
                : unselectedItemColor,
          ),
          label: 'Stocks',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetConst.home,
            color: controller.selectedIndex.value == 1
                ? selectedItemColor
                : unselectedItemColor,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: controller.selectedIndex.value,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      onTap: controller.onTap,
    );
  }

  Widget get getBody {
    return controller.selectedIndex.value == 0
        ? StockList(controller)
        : Container(
            child: Text(
              'Pr0file',
              style: TextStyles.sp18(color: Colors.white),
            ),
          );
  }
}
