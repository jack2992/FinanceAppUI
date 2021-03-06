import 'package:FinanceAppUI/common/color_constants.dart';
import 'package:FinanceAppUI/custom_widgets/card_widget.dart';
import 'package:FinanceAppUI/custom_widgets/transaction_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/constants.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: ColorConstants.kwhiteColor,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: ColorConstants.kwhiteColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'Your Card',
                  style: GoogleFonts.spartan(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Your have 3 Active Cards',
                  style: GoogleFonts.spartan(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.kgreyColor,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 3.0, right: 10.0, top: 30.0),
                  child: Container(
                    height: 175.0,
                    child: ListView.builder(
                      shrinkWrap: false,
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CardWidget(
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0
            ),
            child: Column(
              children: [
                Text(
                  'Recent Transactions',
                  style: GoogleFonts.spartan(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: List.generate(
                    Constants.titleList.length,
                    (index) {
                      return TransactionListWidget(
                        icon: Constants.iconList[index],
                        titleTxt: Constants.titleList[index],
                        subtitleTxt: Constants.subtitleList[index],
                        amount: Constants.amountList[index],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
