import 'package:environment_services/Pages/Coverage/coverage_page_grid.dart';
import 'package:environment_services/Pages/Segregation/segregation_page.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../components/appBar.dart';
import '../../components/constant_color.dart';
import '../Coverage/coverage_page_graph.dart';
import '../Collection/collection_page.dart';
import '../home_page.dart';

class SegregationPageMonth extends StatefulWidget {
  const SegregationPageMonth({super.key});

  @override
  State<SegregationPageMonth> createState() => _SegregationPageMonthState();
}

class _SegregationPageMonthState extends State<SegregationPageMonth> {
  late ZoomPanBehavior _zoomPanBehavior;
  late ZoomPanBehavior _zoomPanBehavior1;
  @override
  void initState(){
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
    _zoomPanBehavior1 = ZoomPanBehavior(
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
    super.initState();
  }
  final List<ChartData> chartData = [
    ChartData('Feb\n1', 150, 120, 110),
    ChartData('Feb\n2', 150, 120, 110),
    ChartData('Feb\n3', 150, 120, 110),
    ChartData('Feb\n4', 150, 120, 110),
    ChartData('Feb\n5', 150, 120, 110),
    ChartData('Feb\n6', 150, 120, 110),
    ChartData('Feb\n7', 150, 120, 110),
    ChartData('Feb\n8', 130, 100, 90),
    ChartData('Feb\n9', 150, 120, 110),
    ChartData('Feb\n10', 150, 120, 110),
    ChartData('Feb\n11', 150, 120, 110),
    ChartData('Feb\n12', 150, 120, 110),
    ChartData('Feb\n13', 130, 100, 90),
    ChartData('Feb\n14', 150, 120, 110),
    ChartData('Feb\n15', 150, 120, 110),
    ChartData('Feb\n16', 150, 120, 110),
    ChartData('Feb\n17', 150, 120, 110),
    ChartData('Feb\n18', 150, 100, 80),
    ChartData('Feb\n19', 150, 120, 110),
    ChartData('Feb\n20', 160, 120, 110),
    ChartData('Feb\n21', 150, 120, 110),
    ChartData('Feb\n22', 130, 110, 100),
    ChartData('Feb\n23', 150, 120, 110),
    ChartData('Feb\n24', 130, 110, 100),
    ChartData('Feb\n25', 150, 120, 110),
    ChartData('Feb\n26', 160, 125, 118),
    ChartData('Feb\n27', 150, 120, 110),
    ChartData('Feb\n28', 110, 90, 60),
    ChartData('Feb\n29', 150, 120, 110),
  ];
  final List<ChartData1> chartData1 = [
    ChartData1('Feb\n1', 150, 120, 110, 30, 35),
    ChartData1('Feb\n2', 150, 120, 110,30, 35),
    ChartData1('Feb\n3', 150, 120, 110,30, 30),
    ChartData1('Feb\n4', 150, 120, 110,30, 50),
    ChartData1('Feb\n5', 150, 120, 110,30, 20),
    ChartData1('Feb\n6', 150, 120, 110,30, 35),
    ChartData1('Feb\n7', 150, 120, 110,30, 35),
    ChartData1('Feb\n8', 130, 100, 90, 30, 30),
    ChartData1('Feb\n9', 150, 120, 110, 30, 35),
    ChartData1('Feb\n10', 150, 120, 110, 30, 32),
    ChartData1('Feb\n11', 150, 120, 110, 30, 40),
    ChartData1('Feb\n12', 150, 120, 110, 30, 15),
    ChartData1('Feb\n13', 130, 100, 90, 30, 35),
    ChartData1('Feb\n14', 150, 120, 110, 30, 35),
    ChartData1('Feb\n15', 150, 120, 110, 30, 20),
    ChartData1('Feb\n16', 150, 120, 110, 30, 40),
    ChartData1('Feb\n17', 150, 120, 110, 30, 30),
    ChartData1('Feb\n18', 150, 100, 80, 30, 35),
    ChartData1('Feb\n19', 150, 120, 110, 30, 35),
    ChartData1('Feb\n20', 160, 120, 110, 30, 30),
    ChartData1('Feb\n21', 150, 120, 110, 30, 28),
    ChartData1('Feb\n22', 130, 110, 100, 30, 30),
    ChartData1('Feb\n23', 150, 120, 110, 30, 35),
    ChartData1('Feb\n24', 130, 110, 100, 30, 35),
    ChartData1('Feb\n25', 150, 120, 110, 30, 35),
    ChartData1('Feb\n26', 160, 125, 118, 30, 30),
    ChartData1('Feb\n27', 150, 120, 110, 30, 35),
    ChartData1('Feb\n28', 110, 90, 60, 30, 40),
    ChartData1('Feb\n29', 150, 120, 110, 30, 38),
  ];

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
                            MaterialPageRoute(builder: (context) => MyHomePage()),
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
                    top: 15.0, left: 20, bottom: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SegregationPage()),
                              );
                            },
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
                          child: Container(
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
                                "Month",
                                style: TextStyle(
                                  color: Color(0xff001E20),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: 340,
                height: 278,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 10),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Daily Collection vs Segregation",
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffB5797F),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Daily Collection',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff9EB6E9),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Segregation',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff9B307D),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Percentage',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          height: 200,
                          child: SfCartesianChart(
                            enableAxisAnimation: true,
                            zoomPanBehavior: _zoomPanBehavior,

                            primaryXAxis: CategoryAxis(
                              isVisible: true,

                              interval: 1,
                              autoScrollingDelta: 9,
                              autoScrollingMode: AutoScrollingMode.start,
                              labelStyle: TextStyle(
                                color: Color(0xff77838F),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                              edgeLabelPlacement: EdgeLabelPlacement.shift,
                            ),
                            primaryYAxis: NumericAxis(
                              interval: 30,
                            ),
                            series: <CartesianSeries>[
                              ColumnSeries<ChartData, String>(
                                color: Color(0xffB5797F),
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
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.07),
                                  topLeft: Radius.circular(6.07),
                                ),
                                color: Color(0xff9EB6E9),
                                width: 0.6,
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y2,
                              ),
                              LineSeries<ChartData, String>(
                                  markerSettings: MarkerSettings(isVisible: true, width: 4.5,height: 4.5, borderColor: Colors.transparent),
                                  color: Color(0xff9B307D),
                                  width: 2,
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y3)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 340,
                height: 296,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top:12.0, bottom : 12, left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Primary Collection Vs D2D Segregation",
                                  style: TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffA0407E),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Primary Collection',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 7.5,
                                ),
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff621FBC),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Commercial Establishment Segragation',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),



                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff01D83A),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'HouseHold Segregation',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 7.5,
                                ),
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'HouseHold Segregation %',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Row(
                              children: [
                                Container(
                                  width: 7.5,
                                  height: 7.5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff9747FF),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Commercial Establishment Segregation %',
                                  style: TextStyle(
                                      fontSize: 9.25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 180,
                        child: SfCartesianChart(
                          zoomPanBehavior: _zoomPanBehavior1,

                          primaryXAxis: CategoryAxis(
                            interval: 1,
                            autoScrollingDelta: 9,
                            autoScrollingMode: AutoScrollingMode.start,
                            labelStyle: TextStyle(
                              color: Color(0xff77838F),
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                            ),
                            edgeLabelPlacement: EdgeLabelPlacement.shift,
                          ),
                          primaryYAxis: NumericAxis(
                            interval: 30,
                          ),
                          series: <CartesianSeries>[
                            ColumnSeries<ChartData1, String>(
                              color: Color(0xffA0407E),
                              width: 0.7,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                              ),
                              // borderRadius: BorderRadius.all(Radius.circular(5)),
                              dataSource: chartData1,
                              xValueMapper: (ChartData1 ch, _) => ch.x,
                              yValueMapper: (ChartData1 ch, _) => ch.y1,
                            ),
                            ColumnSeries<ChartData1, String>(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                              ),
                              color: Color(0xff01D83A),
                              width: 0.7,
                              dataSource: chartData1,
                              xValueMapper: (ChartData1 data, _) => data.x,
                              yValueMapper: (ChartData1 data, _) => data.y2,
                            ),
                            LineSeries<ChartData1, String>(
                                markerSettings: MarkerSettings(isVisible: true, width: 4.5,height: 4.5, borderColor: Colors.transparent),
                                color: Color(0xff000000),
                                width: 2,
                                dataSource: chartData1,
                                xValueMapper: (ChartData1 data, _) => data.x,
                                yValueMapper: (ChartData1 data, _) => data.y3),
                            ColumnSeries<ChartData1, String>(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                                topLeft: Radius.circular(4),
                              ),
                              color: Color(0xff621FBC),
                              width: 0.7,
                              dataSource: chartData1,
                              xValueMapper: (ChartData1 data, _) => data.x,
                              yValueMapper: (ChartData1 data, _) => data.y4,
                            ),
                            LineSeries<ChartData1, String>(
                                markerSettings: MarkerSettings(isVisible: true, width: 4.5,height: 4.5, borderColor: Colors.transparent),
                                color: Color(0xff9747FF),
                                width: 2,
                                dataSource: chartData1,
                                xValueMapper: (ChartData1 data, _) => data.x,
                                yValueMapper: (ChartData1 data, _) => data.y5,  )
                          ],
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
  final int? y1;
  final int? y2;
  final int? y3;


  ChartData(
    this.x,
    this.y1,
    this.y2,
    this.y3,
  );
}

class ChartData1{
  final String? x;
  final int? y1;
  final int? y2;
  final int? y3;
  final int y4;
  final int y5;


  ChartData1(
      this.x,
      this.y1,
      this.y2,
      this.y3,
      this.y4,
      this.y5,

      );
}

