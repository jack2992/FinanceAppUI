import 'package:FinanceAppUI/common/color_constants.dart';
import 'package:FinanceAppUI/common/size_constants.dart';
import 'package:FinanceAppUI/custom_widgets/graph_card_widget.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'common/constants.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final numberFormat = new NumberFormat("##,###.00#", "en_US");
  Color color = ColorConstants.gblackColor;
  Color fcolor = ColorConstants.kgreyColor;
  bool isActive = false;
  int activeIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstants.kblackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 30.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.short_text,
                    color: ColorConstants.kwhiteColor,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: ColorConstants.kwhiteColor,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConstants.sbh30,
              ),
              Text(
                'Your Balance',
                style: GoogleFonts.spartan(
                  fontSize: SizeConstants.fSize25,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.kwhiteColor,
                ),
              ),
              SizedBox(
                height: SizeConstants.sbh20,
              ),
              Text(
                'Money Received',
                style: GoogleFonts.spartan(
                  fontSize: SizeConstants.fSize15,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.kgreyColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r'$' + '${numberFormat.format(27777.07)}',
                    style: GoogleFonts.spartan(
                      fontSize: SizeConstants.fSize40,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kwhiteColor,
                    )
                  ),
                  Row(
                    children: [
                      Text(
                        '15%',
                        style: GoogleFonts.spartan(
                          fontSize: SizeConstants.fSize12,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: size.height/2.5,
                  width: size.width,
                  child: BezierChart(
                    bezierChartScale: BezierChartScale.CUSTOM,
                    selectedValue: 1,
                    xAxisCustomValues: [1,5,10,15,20,25,30],
                    series: [
                      BezierLine(
                        label: 'point',
                        lineColor: ColorConstants.kgreenColor,
                        dataPointStrokeColor: ColorConstants.kwhiteColor,
                        dataPointFillColor: ColorConstants.kgreenColor,
                        lineStrokeWidth: 3,
                        data: const [
                          DataPoint<double>(value: 100, xAxis: 1),
                          DataPoint<double>(value: 130, xAxis: 5),
                          DataPoint<double>(value: 130, xAxis: 10),
                          DataPoint<double>(value: 300, xAxis: 15),
                          DataPoint<double>(value: 75, xAxis: 20),
                          DataPoint<double>(value: 100, xAxis: 25),
                          DataPoint<double>(value: 600, xAxis: 30),
                        ],
                      ),
                    ],
                    config: BezierChartConfig(
                      startYAxisFromNonZeroValue: true,
                      verticalIndicatorFixedPosition: false,
                      bubbleIndicatorColor: ColorConstants.gblackColor,
                      bubbleIndicatorLabelStyle: TextStyle(color: ColorConstants.kwhiteColor),
                      bubbleIndicatorTitleStyle: TextStyle(color: ColorConstants.kwhiteColor),
                      bubbleIndicatorValueStyle: TextStyle(color: ColorConstants.kwhiteColor),
                      footerHeight: SizeConstants.fSize40,
                      displayLinesXAxis: false,
                      stepsYAxis: 15,
                      displayYAxis: false,
                      xAxisTextStyle: TextStyle(color: ColorConstants.kblackColor),
                      backgroundGradient: LinearGradient(
                        colors: [
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,

                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                      ),
                      snap: false,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: size.width/3.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: ColorConstants.kgreenColor,
                    ),
                    child: Center(
                      child: Text(
                        'Now to Dec',
                        style: GoogleFonts.spartan(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GraphCardWidget(
                    title: Constants.strList[0],
                    activeColor: color,
                    fontColor: fcolor,
                    isActive: isActive,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GraphCardWidget(
                    title: Constants.strList[1],
                    activeColor: color,
                    fontColor: fcolor,
                    isActive: isActive,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GraphCardWidget(
                    title: Constants.strList[2],
                    activeColor: color,
                    fontColor: fcolor,
                    isActive: isActive,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Income',
                    style: GoogleFonts.spartan(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.kgreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '75%',
                        style: GoogleFonts.spartan(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kgreyColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Outcome',
                    style: GoogleFonts.spartan(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.kgreyColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '25%',
                        style: GoogleFonts.spartan(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kgreyColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
