import 'package:environment_services/Pages/Collection/collection_page_month.dart';
import 'package:environment_services/Pages/Coverage/coverage_page_grid.dart';

import 'package:environment_services/Pages/Segregation/segregation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../components/appBar.dart';
import '../../../components/constant_color.dart';
import '../Coverage/coverage_page_graph.dart';
import '../home_page.dart';
import 'collection_page_pie.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  final List<ChartData> chartData = [
    ChartData('Biodegradable Wet\nWaste', 12, const Color(0xff628C6E)),
    ChartData("Nondegradable Waste", 5, const Color(0xffE56730)),
    ChartData("Recyclable Dry Waste", 3, const Color(0xff52AAA4)),
    ChartData("Household Hazardous\nWaste", 6, const Color(0xffEE4B3C)),
    ChartData("Mixed Waste/Others", 3, const Color(0xff9F9F9F)),
  ];

  final List<ChartData1> chartData1 = [
    ChartData1('', 78, const Color(0xff1ED760), ''),
    ChartData1('', 22, const Color(0xffF94144), '22%')
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
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
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
                      border:
                          Border.all(color: const Color(0xffDDE0E4), width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
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
                                builder: (context) => const CoveragePageGrid()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
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
                                builder: (context) => const CollectionPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: kprimaryColor,
                              border: Border.all(
                                  color: const Color(0xffDDE0E4), width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
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
                                builder: (context) => const SegregationPage()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
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
                          decoration: const BoxDecoration(
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
                                    builder: (context) =>
                                        const CollectionPage()),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
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
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          "Week",
                          style: TextStyle(
                            color: Color(0xff001E20),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CollectionPageMonth()));
                          },
                          child: const Text(
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
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 225,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 4,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 14, right: 14),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Target vs Actual Collection (MT)",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Row(
                          children: [
                            Container(
                              height: 180,
                              width: 200,
                              child: SfCircularChart(
                                annotations: <CircularChartAnnotation>[
                                  CircularChartAnnotation(
                                    widget: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
                                          color: Colors.grey,
                                          width: 0.25,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 42,
                                        child: Text(
                                          '114 MT',
                                          style: TextStyle(
                                              color: Color(0xff36689E),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                series: <CircularSeries>[
                                  DoughnutSeries<ChartData1, String>(
                                      dataSource: chartData1,
                                      xValueMapper: (ChartData1 ch, _) => ch.x,
                                      yValueMapper: (ChartData1 ch, _) => ch.y,
                                      pointColorMapper: (ChartData1 data, _) =>
                                          data.color,
                                      dataLabelMapper: (ChartData1 data, _) =>
                                          data.text,
                                      radius: '95%',
                                      innerRadius: '60%',
                                      dataLabelSettings:
                                          const DataLabelSettings(
                                        // Renders the data label
                                        isVisible: true,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 5.0, left: 5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 8.0,
                                        height: 8.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffF94144),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Pending',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 8.0,
                                        height: 8.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff90BE6D),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Actual Collection',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Container(
                width: 340,
                height: 225,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Waste Category wise Collection(MT)",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, bottom: 0, top: 5),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/collection_icon_1.svg',
                                    height: 20,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CollectionPagePie()),
                                      );
                                    },
                                    child: SvgPicture.asset(
                                      'assets/collection_icon_2.svg',
                                      // Replace with the path to your SVG file
                                      height: 20,
                                      width: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          height: 180,
                          width: 330,
                          child: SfCartesianChart(
                            primaryXAxis: const CategoryAxis(
                                labelStyle: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                                edgeLabelPlacement: EdgeLabelPlacement.shift),
                            primaryYAxis: const NumericAxis(
                              interval: 3,
                            ),
                            series: <CartesianSeries>[
                              BarSeries<ChartData, String>(
                                  color: const Color(0xff628C6E),
                                  width: 0.4,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(6.07),
                                    bottomRight: Radius.circular(6.07),
                                  ),
                                  // borderRadius: BorderRadius.all(Radius.circular(5)),
                                  dataSource: chartData,
                                  xValueMapper: (ChartData ch, _) => ch.x,
                                  yValueMapper: (ChartData ch, _) => ch.y1,
                                  pointColorMapper: (ChartData data, _) =>
                                      data.color,
                                  dataLabelSettings: const DataLabelSettings(
                                      // Renders the data label
                                      isVisible: true)),
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
  final int? y1;

  final Color? color;

  ChartData(this.x, this.y1, this.color);
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
