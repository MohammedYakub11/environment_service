import 'package:environment_services/Pages/Coverage/coverage_page_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../components/appBar.dart';
import '../../components/constant_color.dart';
import '../Coverage/coverage_page_graph.dart';
import '../Coverage/coverage_page_month.dart';
import '../Segregation/segregation_page.dart';
import '../home_page.dart';
import 'collection_page.dart';

class CollectionPageMonth extends StatefulWidget {
  const CollectionPageMonth({super.key});

  @override
  State<CollectionPageMonth> createState() => _CollectionPageMonthState();
}

class _CollectionPageMonthState extends State<CollectionPageMonth> {
  final List<ChartData> chartData = [
    ChartData('Feb\n1', 73, 87),
    ChartData('Feb\n2', 106, 54),
    ChartData('Feb\n3', 133, 27),
    ChartData('Feb\n4', 53, 107),
    ChartData('Feb\n5', 97, 63),
    ChartData('Feb\n6', 45, 115),
    ChartData('Feb\n7', 61, 99),
    ChartData('Feb\n8', 113, 47),
    ChartData('Feb\n9', 80, 80),
    ChartData('Feb\n10', 53, 107),
    ChartData('Feb\n11', 133, 27),
    ChartData('Feb\n12', 61, 99),
    ChartData('Feb\n13', 27, 133),
    ChartData('Feb\n14', 90, 70),
    ChartData('Feb\n15', 133, 27),
    ChartData('Feb\n16', 73, 87),
    ChartData('Feb\n17', 106, 54),
    ChartData('Feb\n18', 133, 27),
    ChartData('Feb\n19', 53, 107),
    ChartData('Feb\n20', 97, 63),
    ChartData('Feb\n21', 45, 115),
    ChartData('Feb\n22', 61, 99),
    ChartData('Feb\n23', 113, 47),
    ChartData('Feb\n24', 80, 80),
    ChartData('Feb\n25', 53, 107),
    ChartData('Feb\n26', 133, 27),
    ChartData('Feb\n27', 61, 99),
    ChartData('Feb\n28', 27, 133)
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
                            color: kprimaryColor,
                            border: Border.all(
                                color: Color(0xffDDE0E4), width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 14),
                          child: Text(
                            "Collection",
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
                              builder: (context) => SegregationPage()),
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                              Border.all(color: Colors.white, width: 2),
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
                                  builder: (context) => CollectionPage()),
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
                                  builder: (context) => CollectionPageMonth()),
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
                ],
              ),
            ),

            Container(
              width: 340,
              height: 265,
              child: Card(
                color: Colors.white,
                shadowColor: Colors.grey,
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Target vs Actual Collection (MT)",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
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
                                    fontSize: 11,
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
                                'Actual Collection',
                                style: TextStyle(
                                    fontSize: 11,
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
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          edgeLabelPlacement: EdgeLabelPlacement.shift,
                        ),
                        primaryYAxis: NumericAxis(
                          interval: 30,
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