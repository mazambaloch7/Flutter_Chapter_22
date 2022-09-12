import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TopTap extends StatelessWidget {
  const TopTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: "assets/images/apiens_2.png");
  }
}
