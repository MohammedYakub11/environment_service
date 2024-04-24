import 'package:environment_services/Pages/Coverage/coverage_page_grid.dart';
import 'package:environment_services/Pages/Segregation/segregation_page_month.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../components/appBar.dart';
import '../../components/constant_color.dart';
import '../Collection/collection_page.dart';
import '../Coverage/coverage_page_graph.dart';
import '../home_page.dart';

class SegregationPage extends StatefulWidget {
  const SegregationPage({super.key});

  @override
  State<SegregationPage> createState() => _SegregationPageState();
}

class _SegregationPageState extends State<SegregationPage> {
  final List<ChartData> chartData = [
    ChartData('W1', 3, 2, 3.5),
    ChartData("W2", 3, 4, 2.75),
    ChartData("W3", 5, 2.9, 1.8),
    ChartData("W4", 2.1, 1.8, 2.4),
    ChartData("W5", 1.8, 0.8, 2.3),
    ChartData('W6', 3.75, 3, 5.3),
    ChartData("W7", 5.8, 4, 1.9),
    ChartData("W8", 3.8, 3, 4),
    ChartData("W9", 2.8, 1.7, 2.5),
    ChartData("W10", 4.2, 3.5, 4.5),
    ChartData("W11", 1.8, 0.8, 1.5),
    ChartData('W12', 3, 2, 3.5),
    ChartData("W13", 3, 4, 2.75),
    ChartData("W14", 5, 2.9, 1.8),
    ChartData("W15", 2.1, 1.8, 2.4),
    ChartData('W16', 3.75, 3, 5.3),
    ChartData("W17", 5.8, 4, 1.9),
    ChartData("W18", 3.8, 3, 4),
    ChartData("W19", 2.8, 1.7, 2.5),


  ];

  final List<ChartData1> chartData1 = [
    ChartData1('', 48, Color(0xff1ED760), ''),
    ChartData1('', 75, Color(0xffF4B63E), ''),
  ];

  late ZoomPanBehavior _zoomPanBehavior;
  @override
  void initState(){
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 15.0),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: kprimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDDE0E4), width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 14),
                            child: Text(
                              "Attendance",
                              style: TextStyle(
                                color: Color(0xff001E20),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoveragePageGrid()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 14),
                            child: Text(
                              "Coverage",
                              style: TextStyle(
                                color: Color(0xff001E20),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CollectionPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 14),
                            child: Text(
                              "Collection",
                              style: TextStyle(
                                color: Color(0xff001E20),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SegregationPage()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: kprimaryColor,
                                border: Border.all(
                                    color: Color(0xffDDE0E4), width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 14),
                              child: Text(
                                "Segregation",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 20, bottom: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: kprimaryColor,
                            width: 3,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 5),
                        child: Text(
                          "Today",
                          style: TextStyle(
                            color: Color(0xff001E20),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Week",
                      style: TextStyle(
                        color: Color(0xff001E20),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegregationPageMonth()),
                        );
                      },
                      child: Text(
                        "Month",
                        style: TextStyle(
                          color: Color(0xff001E20),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 255,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  // borderOnForeground: true,
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, top: 12),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Division wise Waste Collection vs Segregation",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffF4B63E),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Collection',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff1ED760),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Segregation',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                child: SfCircularChart(
                                  annotations: <CircularChartAnnotation>[
                                    CircularChartAnnotation(
                                        widget: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '28.29',
                                            style: TextStyle(
                                                color: Color(0xffF4B63E),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '15.15',
                                            style: TextStyle(
                                                color: Color(0xff1ED760),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    )),
                                  ],
                                  series: <CircularSeries>[
                                    RadialBarSeries<ChartData1, String>(
                                        gap: '30%',
                                        dataSource: chartData1,
                                        xValueMapper: (ChartData1 ch, _) =>
                                            ch.x,
                                        yValueMapper: (ChartData1 ch, _) =>
                                            ch.y,
                                        pointColorMapper:
                                            (ChartData1 data, _) => data.color,
                                        dataLabelMapper: (ChartData1 data, _) =>
                                            data.text,
                                        radius: '100%',
                                        innerRadius: '60%',
                                        dataLabelSettings: DataLabelSettings(
                                          // Renders the data label
                                          isVisible: true,
                                        )),
                                  ],
                                ),
                              ),
                              Text(
                                "Division 1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                child: SfCircularChart(
                                  annotations: <CircularChartAnnotation>[
                                    CircularChartAnnotation(
                                        widget: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '28.29',
                                            style: TextStyle(
                                                color: Color(0xffF4B63E),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '15.15',
                                            style: TextStyle(
                                                color: Color(0xff1ED760),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    )),
                                  ],
                                  series: <CircularSeries>[
                                    RadialBarSeries<ChartData1, String>(
                                        gap: '30%',
                                        dataSource: chartData1,
                                        xValueMapper: (ChartData1 ch, _) =>
                                            ch.x,
                                        yValueMapper: (ChartData1 ch, _) =>
                                            ch.y,
                                        pointColorMapper:
                                            (ChartData1 data, _) => data.color,
                                        dataLabelMapper: (ChartData1 data, _) =>
                                            data.text,
                                        radius: '100%',
                                        innerRadius: '60%',
                                        dataLabelSettings: DataLabelSettings(
                                          // Renders the data label
                                          isVisible: true,
                                        )),
                                  ],
                                ),
                              ),
                              Text(
                                "Division 2",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 340,
                height: 265,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 10),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ward wise Waste Collection vs Segregation",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ]),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff283a28),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Target',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffb3497f),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Collection',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffd885a5),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Segregation',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SafeArea(
                        child: Container(
                          height: 200,
                          child: SfCartesianChart(
                            enableAxisAnimation: true,
                              zoomPanBehavior: _zoomPanBehavior,

                            primaryXAxis: CategoryAxis(
                                interval: 1,
                                autoScrollingDelta: 9,
                                autoScrollingMode: AutoScrollingMode.start,
                                isVisible: true,
                                labelStyle: TextStyle(
                                  color: Color(0xff77838F),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                                edgeLabelPlacement: EdgeLabelPlacement.shift),
                            primaryYAxis: NumericAxis(
                              interval: 1,
                            ),
                            series: <CartesianSeries>[
                              ColumnSeries<ChartData, String>(
                                color: Color(0xff283a28),
                                width: 0.6,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.07),
                                  topLeft: Radius.circular(6.07),
                                ),
                                // borderRadius: BorderRadius.all(Radius.circular(5)),
                                dataSource: chartData,
                                xValueMapper: (ChartData ch, _) => ch.x,
                                yValueMapper: (ChartData ch, _) => ch.y1,
                              ),
                              ColumnSeries<ChartData, String>(
                                color: Color(0xffb3497f),
                                width: 0.6,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.07),
                                  topLeft: Radius.circular(6.07),
                                ),
                                // borderRadius: BorderRadius.all(Radius.circular(5)),
                                dataSource: chartData,
                                xValueMapper: (ChartData ch, _) => ch.x,
                                yValueMapper: (ChartData ch, _) => ch.y2,
                              ),
                              ColumnSeries<ChartData, String>(
                                color: Color(0xffd885a5),
                                width: 0.6,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.07),
                                  topLeft: Radius.circular(6.07),
                                ),
                                // borderRadius: BorderRadius.all(Radius.circular(5)),
                                dataSource: chartData,
                                xValueMapper: (ChartData ch, _) => ch.x,
                                yValueMapper: (ChartData ch, _) => ch.y3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String? x;
  final double? y1;
  final double? y2;
  final double? y3;

  ChartData(
    this.x,
    this.y1,
    this.y2,
    this.y3,
  );
}

class ChartData1 {
  ChartData1(
    this.x,
    this.y,
    this.color,
    this.text,
  );

  final String x;
  final double y;
  final Color color;
  final String? text;
}
