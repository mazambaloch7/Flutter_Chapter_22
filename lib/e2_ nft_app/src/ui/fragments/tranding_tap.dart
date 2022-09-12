import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TrandingTap extends StatelessWidget {
  const TrandingTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: "assets/images/apiens_3.png");
  }
}
