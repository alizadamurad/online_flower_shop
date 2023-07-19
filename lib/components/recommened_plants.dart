import 'package:flutter/material.dart';

import '../constants.dart';
import '../details/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RecommendedPlant(
              image: 'assets/images/image_1.png',
              title: "samantha",
              country: 'russia',
              price: 440,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DetailsScreen()));
              },
            ),
            RecommendedPlant(
              image: 'assets/images/image_2.png',
              title: "angelica",
              country: 'russia',
              price: 250,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DetailsScreen()));
              },
            ),
            RecommendedPlant(
              image: 'assets/images/image_3.png',
              title: "samantha",
              country: 'russia',
              price: 440,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DetailsScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendedPlant extends StatelessWidget {
  const RecommendedPlant({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.press,
    required this.price,
  });
  final String image, title, country;
  final Function() press;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
            left: kDefaultPadding,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.20),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
