import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/appBar.dart';
import '../../components/constant_color.dart';
import '../Collection/collection_page.dart';
import '../Segregation/segregation_page.dart';
import '../home_page.dart';
import 'coverage_page_graph.dart';
import 'coverage_page_month.dart';

class CoveragePageGrid extends StatefulWidget {
  const CoveragePageGrid({super.key});

  @override
  State<CoveragePageGrid> createState() => _CoveragePageGridState();
}

class _CoveragePageGridState extends State<CoveragePageGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
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
                        SizedBox(width: 30),
                        Text(
                          "Month",
                          style: TextStyle(
                            color: Color(0xff001E20),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
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
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                              ),
                              width: 28,
                              height: 25,
                              child: Padding(
                                padding: const EdgeInsets.all(3.5),
                                child: SvgPicture.asset(
                                  'assets/coverage_icon_3.svg',
                                  // Replace with the path to your SVG file
                                  height: 14,
                                  width: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
        
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CoveragePage()),
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
                                topRight: Radius.circular(3),
                                bottomRight: Radius.circular(3),
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
                                      'assets/coverage_icon_4.svg',
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
                      ],
                    ),
                  ],
                ),
              ),
        
              Container(
                width: 330,
                height: 205,
        
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFF086972),
                      width: 5,
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2, // Specify the blur radius value
                      spreadRadius: 1, // Specify the spread radius value
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "D2D Households",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Target :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "108492",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "82958",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Percentage Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "76.5 %",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                height: 205,
        
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFF086972),
                      width: 5,
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2, // Specify the blur radius value
                      spreadRadius: 1, // Specify the spread radius value
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sweeping - More Than 6m",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Target :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "25",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Percentage Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10.0 %",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                height: 205,
        
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFF086972),
                      width: 5,
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2, // Specify the blur radius value
                      spreadRadius: 1, // Specify the spread radius value
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "D2D Commercial Establishment",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Target :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7695",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7695",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Percentage Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "100.5 %",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                height: 205,
        
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFF086972),
                      width: 5,
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2, // Specify the blur radius value
                      spreadRadius: 1, // Specify the spread radius value
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sweeping 5-6m",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Target :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "60",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "13",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Percentage Achieved :",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kprimaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "21.7 %",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
