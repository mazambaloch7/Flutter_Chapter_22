/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;

  const MyTabBar({Key? key, required this.tabOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey,
          labelStyle: GoogleFonts.bebasNeue(fontSize: 32),
          tabs: [
            Tab(
              child: Text(tabOptions[0][0]),
            ),
            Tab(
              child: Text(tabOptions[1][0]),
            ),
            Tab(
              child: Text(tabOptions[2][0]),
            ),
          ],
        ),
        Expanded(
            child: TabBarView(
          children: [
            tabOptions[0][1],
            tabOptions[1][1],
            tabOptions[2][1],
          ],
        ))
      ],
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions; // [ "Recent", Widget ]
  MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          indicatorPadding: EdgeInsets.only(right: 15, left: 15),
          unselectedLabelStyle: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),

          unselectedLabelColor: Colors.grey,
          labelStyle: GoogleFonts.bebasNeue(
            fontSize: 32,
          ),
          //isScrollable: true,
          tabs: [
            Tab(
              child: Text(
                tabOptions[0][0],
              ),
            ),
            Tab(
              child: Text(
                tabOptions[1][0],
              ),
            ),
            Tab(
              child: Text(
                tabOptions[2][0],
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
              tabOptions[2][1],
            ],
          ),
        )
      ],
    );
  }
}
//