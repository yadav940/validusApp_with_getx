import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validus/model/stocks_response.dart';
import 'package:validus/ui/usefull/palette.dart';

import '../../controller/validus_controller.dart';
import '../usefull/styles/text_styles.dart';

class StockList extends StatelessWidget {
  ValidusController controller;

  StockList(this.controller);

  var padding16 = const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);

  @override
  Widget build(BuildContext context) {
    return controller.stockList.isEmpty?Text(
      'Data not found',
      style: TextStyles.sp20(color: Palette.colorWhite),
    ):ListView.builder(
      //shrinkWrap: true,
      //physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.stockList.length,
      itemBuilder: (context, index) {
        return getIteam(controller.stockList[index]);
      },
    );
  }

  Widget getIteam(Data stockData) {
    return Padding(
      padding: padding16,
      child: Container(
        color: Palette.cardBg,
        padding: padding16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stockData.stockName ?? '',
              style: TextStyles.sp20(color: Palette.colorWhite),
            ),
            const SizedBox(
              height: 12,
            ),
            getPrice('Price', (stockData.price ?? 0).toString()),
            const SizedBox(
              height: 8,
            ),
            getPrice('Day gain', (stockData.dayGain ?? 0).toString()),
            const SizedBox(
              height: 8,
            ),
            getPrice('Last trade', stockData.lastTrade ?? ''),
            const SizedBox(
              height: 8,
            ),
            getPrice('Extended hrs', stockData.extendedHours ?? ''),
            const SizedBox(
              height: 8,
            ),
            getPrice(
                '% Change',
                (((stockData.price ?? 0) - (stockData.lastPrice ?? 0)) *
                            100 /
                            (stockData.lastPrice ?? 1))
                        .toStringAsFixed(1) +
                    '%',
                isChange:
                    ((stockData.price ?? 0) - (stockData.lastPrice ?? 0)) > 0,
                color: ((stockData.price ?? 0) - (stockData.lastPrice ?? 0)) > 0
                    ? Palette.success
                    : Palette.colorError),
          ],
        ),
      ),
    );
  }

  Widget getPrice(String title, String price,
      {bool? isChange, Color color = Palette.colorWhite}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.sp18(),
        ),
        Row(
          children: [
            if(isChange!=null)
              Icon(isChange?Icons.arrow_drop_up_sharp:Icons.arrow_drop_down_sharp,color: color,),
            Text(
              price,
              style: TextStyles.sp18(color: color),
            )
          ],
        ),
      ],
    );
  }
}
