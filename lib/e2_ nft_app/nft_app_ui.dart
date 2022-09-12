import 'package:flutter/material.dart';
import 'package:mflutter_notebook_chaptter_22/e2_%20nft_app/src/ui/homepage_nft.dart';

class NtfApp extends StatelessWidget {
  const NtfApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage_NFT(),
      // home: HomePage_NFT(),
    );
  }
}
