import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../components/appBar.dart';
import '../../components/constant_color.dart';
import '../Collection/collection_page.dart';
import '../home_page.dart';
import '../Segregation/segregation_page.dart';
import 'coverage_page_graph.dart';
import 'coverage_page_grid.dart';

class CoveragePageMonth extends StatefulWidget {
  const CoveragePageMonth({super.key});

  @override
  State<CoveragePageMonth> createState() => _CoveragePageMonthState();
}

class _CoveragePageMonthState extends State<CoveragePageMonth> {
  final List<ChartData> chartData = [
    ChartData('Feb\n1', 25000, 35000),
    ChartData('Feb\n2', 40000, 20000),
    ChartData('Feb\n3', 50000, 10000),
    ChartData('Feb\n4', 15000, 45000),
    ChartData('Feb\n5', 35000, 25000),
    ChartData('Feb\n6', 12000, 48000),
    ChartData('Feb\n7', 18000, 42000),
    ChartData('Feb\n8', 45000, 15000),
    ChartData('Feb\n9', 28000, 32000),
    ChartData('Feb\n10', 15000, 45000),
    ChartData('Feb\n11', 50000, 10000),
    ChartData('Feb\n12', 18000, 42000),
    ChartData('Feb\n13', 10000, 50000),
    ChartData('Feb\n14', 38000, 22000),
    ChartData('Feb\n15', 50000, 10000),
    ChartData('Feb\n16', 25000, 35000),
    ChartData('Feb\n17', 40000, 20000),
    ChartData('Feb\n18', 50000, 10000),
    ChartData('Feb\n19', 15000, 45000),
    ChartData('Feb\n20', 35000, 25000),
    ChartData('Feb\n21', 12000, 48000),
    ChartData('Feb\n22', 18000, 42000),
    ChartData('Feb\n23', 45000, 15000),
    ChartData('Feb\n24', 28000, 32000),
    ChartData('Feb\n25', 15000, 45000),
    ChartData('Feb\n26', 50000, 10000),
    ChartData('Feb\n27', 18000, 42000),
    ChartData('Feb\n28', 10000, 50000),
  ];
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
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
                            color: kprimaryColor,
                            border:
                                Border.all(color: Color(0xffDDE0E4), width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 14),
                          child: Text(
                            "Coverage",
                            style: TextStyle(
                              color: Colors.white,
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
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 14),
                            child: Text(
                              "Segregation",
                              style: TextStyle(
                                color: Color(0xff001E20),
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
                                  builder: (context) => CoveragePage()),
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CoveragePageMonth()),
                            );
                          },
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
                  Row(
                    children: [
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
                            border: Border(
                              left: BorderSide(
                                color: Color(0xffDDE0E4),
                                width: 1,
                              ),
                              right: BorderSide(
                                color: Color(0xffDDE0E4),
                                width: 1,
                              ),
                              top: BorderSide(
                                color: Color(0xffDDE0E4),
                                width: 1,
                              ),
                              bottom: BorderSide(
                                color: Color(0xffDDE0E4),
                                width: 1,
                              ),
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(3),
                              bottomLeft: Radius.circular(3),
                            ),
                          ),
                          width: 28,
                          height: 25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/coverage_icon_1.svg',
                                    // Replace with the path to your SVG file
                                    height: 14,
                                    width: 14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kprimaryColor,
                              border: Border(
                                right: BorderSide(
                                  color: Color(0xffDDE0E4),
                                  width: 1,
                                ),
                                top: BorderSide(
                                  color: Color(0xffDDE0E4),
                                  width: 1,
                                ),
                                bottom: BorderSide(
                                  color: Color(0xffDDE0E4),
                                  width: 1,
                                ),
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                            ),
                            width: 28,
                            height: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(3.5),
                              child: SvgPicture.asset(
                                'assets/coverage_icon_2.svg',
                                // Replace with the path to your SVG file
                                height: 14,
                                width: 14,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: 340,
              height: 245,
              child: Card(
                color: Colors.white,
                shadowColor: Colors.grey,
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "D2D Households",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF94144),
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
                                width: 10,
                              ),
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff90BE6D),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Achieved',
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
                    Container(
                      height: 185,
                      child: SfCartesianChart(
                        zoomPanBehavior: _zoomPanBehavior,
                        primaryXAxis: CategoryAxis(
                          autoScrollingDelta: 10,
                          autoScrollingMode: AutoScrollingMode.start,
                          interval: 1,
                          labelStyle: TextStyle(
                            color: Color(0xff77838F),
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                          edgeLabelPlacement: EdgeLabelPlacement.shift,
                        ),
                        primaryYAxis: NumericAxis(
                          interval: 10000,
                        ),
                        series: <CartesianSeries>[
                          StackedColumnSeries<ChartData, String>(
                            color: Color(0xff90BE6D),
                            width: 0.5,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0),
                              topLeft: Radius.circular(0),
                            ),
                            // borderRadius: BorderRadius.all(Radius.circular(5)),
                            dataSource: chartData,
                            xValueMapper: (ChartData ch, _) => ch.x,
                            yValueMapper: (ChartData ch, _) => ch.y1,
                          ),
                          StackedColumnSeries<ChartData, String>(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              topLeft: Radius.circular(4),
                            ),
                            color: Color(0xffF94144),
                            width: 0.5,
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y2,
                          ),
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
    );
  }
}

class ChartData {
  final String? x;
  final int? y1;
  final int? y2;

  ChartData(
    this.x,
    this.y1,
    this.y2,
  );
}
