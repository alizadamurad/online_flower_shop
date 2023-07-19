import 'package:flutter/material.dart';
import 'package:responsive_test/constants.dart';
import 'components/buy_and_desc.dart';
import 'components/image_and_icons.dart';
import 'components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(size: size),
            const TitleAndPrice(
              title: "Angelica",
              price: 440,
              country: "Russia",
            ),
            const SizedBox(
              height: kDefaultPadding / 2,
            ),
            BuyAndDescription(size: size),
          ],
        ),
      ),
    );
  }
}
