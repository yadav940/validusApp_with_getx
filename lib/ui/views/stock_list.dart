import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validus/model/stocks_response.dart';
import 'package:validus/ui/usefull/palette.dart';
import 'package:validus/ui/widgets/app_card.dart';
import 'package:validus/utils/string_const.dart';

import '../../controller/validus_controller.dart';
import '../usefull/styles/text_styles.dart';

class StockList extends StatelessWidget {
  ValidusController controller;

  StockList(this.controller);

  var padding16 = const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);

  @override
  Widget build(BuildContext context) {
    return controller.stockList.isEmpty?Text(
      StringConst.dataNotFound,
      style: TextStyles.sp20(color: Palette.colorWhite),
    ):ListView.builder(
      itemCount: controller.stockList.length,
      itemBuilder: (context, index) {
        return getIteam(controller.stockList[index]);
      },
    );
  }

  Widget getIteam(DataResponce stockData) {
    return AppCard(
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
          getPrice(StringConst.price, (stockData.price ?? 0).toString()),
          const SizedBox(
            height: 8,
          ),
          getPrice(StringConst.dayGain, (stockData.dayGain ?? 0).toString()),
          const SizedBox(
            height: 8,
          ),
          getPrice(StringConst.lastTrade, stockData.lastTradeString ?? ''),
          const SizedBox(
            height: 8,
          ),
          getPrice(StringConst.extendedhrs, stockData.extendedHoursString ?? ''),
          const SizedBox(
            height: 8,
          ),
          getPrice(
              '% Change',
              stockData.changePercentage! +
                  '%',
              isChange:
                  stockData.isProfit,
              color: stockData.color!,)
        ],
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
