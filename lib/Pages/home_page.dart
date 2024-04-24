
import 'package:environment_services/Pages/Collection/collection_page.dart';
import 'package:environment_services/Pages/Coverage/coverage_page_graph.dart';
import 'package:environment_services/Pages/Coverage/coverage_page_grid.dart';
import 'package:environment_services/Pages/Segregation/segregation_page.dart';
import 'package:environment_services/components/constant_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/appBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                            color: kprimaryColor,
                            border:
                                Border.all(color: Color(0xffDDE0E4), width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 14),
                          child: Text(
                            "Attendance",
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
                          MaterialPageRoute(builder: (context) => CoveragePageGrid()),
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
                          MaterialPageRoute(builder: (context) => CollectionPage()),
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
                          MaterialPageRoute(builder: (context) => SegregationPage()),
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
            ),
//sample
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 235,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 3.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Vehicle Deployment",
                          style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: kprimaryColor,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                            child: Card(
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Color(0xff918f8f),
                                      blurRadius:2,
                                      offset: Offset(0, 1),
                                      spreadRadius: 0.25,),
                                  ] // Adjust the radius as needed
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: kprimaryColor,
                                        border: Border(
                                          right: BorderSide(
                                            color: Color(0xffDDE0E4),
                                            width: 1,
                                          ),

                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(3),
                                          bottomLeft: Radius.circular(3),
                                        ),
                                      ),
                                      width: 60,
                                      height: 60,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row( mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/rickshaw.svg', // Replace with the path to your SVG file
                                                height: 30,
                                                width: 30,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'BOV',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
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

                                          width: 60,
                                          height: 60,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top:22.5),
                                            child: Text(
                                              '114/128',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                            child: Card(
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(color: Color(0xff918f8f),
                                        blurRadius:1.5,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0.25,),
                                    ] // Adjust the radius as needed
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: kprimaryColor,
                                        border: Border(
                                          right: BorderSide(
                                            color: Color(0xffDDE0E4),
                                            width: 1,
                                          ),

                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(3),
                                          bottomLeft: Radius.circular(3),
                                        ),
                                      ),
                                      width: 60,
                                      height: 60,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row( mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/lorry.svg', // Replace with the path to your SVG file
                                                height: 20,
                                                width: 20,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Text(
                                            'HCV',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
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

                                          width: 60,
                                          height: 60,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top:22.5),
                                            child: Text(
                                              '114/128',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                            child: Card(
                              color: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(color: Color(0xff918f8f),
                                        blurRadius:1.5,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0.25,),
                                    ] // Adjust the radius as needed
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: kprimaryColor,
                                        border: Border(
                                          right: BorderSide(
                                            color: Color(0xffDDE0E4),
                                            width: 1,
                                          ),

                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(3),
                                          bottomLeft: Radius.circular(3),
                                        ),
                                      ),
                                      width: 60,
                                      height: 60,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row( mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/truck.svg', // Replace with the path to your SVG file
                                                height: 18,
                                                width: 18,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Text(
                                            'LCV',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
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

                                          width: 60,
                                          height: 60,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top:22.5),
                                            child: Text(
                                              '114/128',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                    ],

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
