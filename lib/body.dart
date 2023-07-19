import 'package:flutter/material.dart';
import 'package:responsive_test/constants.dart';
import 'components/featured_plants.dart';
import 'components/header_with_searchbox.dart';
import 'components/recommened_plants.dart';
import 'components/text_with_more_button.dart';

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
            HeaderWithSearchBox(size: size),
            TitleWithMoreButton(title: "Recommended", press: () {}),
            const RecommendedPlants(),
            TitleWithMoreButton(title: "Featured Plants", press: () {}),
            const FeaturedPlants(),
            const SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
