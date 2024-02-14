import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';
import 'package:machine_test/screens/meetup/description_screen/description.dart';
import 'package:machine_test/utils.dart';

class NumberCard
    extends StatelessWidget {
      final String count;
  const NumberCard(
      {super.key, required this.count});

  @override
  Widget build(
      BuildContext
          context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (contex) => DescriptionPage()),
            );
          },
          child: Card(
            child: Container(
              width: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/vijay.jpg"),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 3,
          child: Container(
            height: 65,
            width: 70,
            decoration: BoxDecoration(
              color: kwhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            ),
            child: Center(
                child: CustomText(
              text: "0$count",
              fs: 70,
              fw: FontWeight.w800,
            )),
          ),
        )
      ],
    );
  }
}
