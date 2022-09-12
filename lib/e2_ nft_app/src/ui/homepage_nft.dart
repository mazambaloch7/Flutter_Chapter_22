import 'package:flutter/material.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/theme/const.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/components/my_appbar.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/components/my_bottonbar.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/components/my_tabbar.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/fragments/TopTab.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/fragments/recent_taps.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/fragments/tranding_tap.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/utils/glass_box.dart';

class HomePage_NFT extends StatefulWidget {
  const HomePage_NFT({Key? key}) : super(key: key);

  @override
  State<HomePage_NFT> createState() => _HomePage_NFTState();
}

class _HomePage_NFTState extends State<HomePage_NFT> {
  // user tapped searched button
  void searchButtonTapped() {}

  // our 3 tab options
  List tabOption = [
    ["Recent", RecentTap()],
    ["Tranding", TrandingTap()],
    ["Top", TopTap()],
  ];

  //bottom bar navigation
  int _currentBottomindex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottomindex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
          backgroundColor: backgroundColor,
          extendBody: true,
          bottomNavigationBar: GlassBox(
            child: MyBottomBar(
                index: _currentBottomindex, onTap: _handleIndexChanged),
          ),
          body: ListView(
            children: [
              MyAppBar(
                title: "Explore Collections",
                onSearchTap: searchButtonTapped,
              ),
              SizedBox(
                height: 600,
                child: MyTabBar(
                  tabOptions: tabOption,
                ),
              ),
            ],
          )),
    );
  }
}
