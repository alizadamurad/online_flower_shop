import 'package:flutter/material.dart';

import '../../constants.dart';

class BuyAndDescription extends StatelessWidget {
  const BuyAndDescription({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 70,
          width: size.width / 2,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
              ))),
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
            ),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Description",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
