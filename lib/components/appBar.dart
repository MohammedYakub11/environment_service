import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBar(BuildContext context) => AppBar(
  automaticallyImplyLeading: false, // This line removes the back button

  toolbarHeight: 56,
      shadowColor: Colors.black54,
      elevation: 2.5,
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
title: Row(
  children: [
    SvgPicture.asset(
      'assets/logo.svg', // Replace with the path to your SVG file
      height: 33,
      width: 113,
    ),
  ],
),
// Image.asset('assets/logo.svg', height: 33, width: 113,),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/profile.svg', // Replace with the path to your SVG file
                  height: 34,

                ),
              ],
            ),
          ),

        ],
      ),
    ),
  ],

);
