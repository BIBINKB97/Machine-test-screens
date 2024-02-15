import 'package:flutter/material.dart';
import 'package:machine_test/view/widgets/text_style.dart';
import 'package:machine_test/utils.dart';

class CustomCard
    extends StatelessWidget {
  final String
      title;
  final String
      meetups;
      final String circleImg;
  const CustomCard(
      {super.key,
      required this.circleImg,
      required this.title,
      required this.meetups});

  @override
  Widget build(
      BuildContext
          context) {
    return Container(
      height:
          215,
      margin:
          EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child:
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: 280,
            decoration: BoxDecoration(border: Border.all(color: kgrey), borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Row(
                  children:  [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: kblack,
                      child: CircleAvatar(
                        radius: 18.7,
                        backgroundColor: kwhite,
                        child: Container(
                          decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage(circleImg))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: title,
                          fs: 20,
                          fw: FontWeight.w600,
                        ),
                        CustomText(
                          text: meetups,
                          clr: kblack54,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Container(
                height: 50,
                child: Stack(
                  alignment: AlignmentDirectional.center, 
                  children: const [
                    Positioned(
                      left: 10.0,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage("assets/images/th.jpg"),
                      ),
                    ),
                    Positioned(
                      left: 50.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/th (1).jpg"),
                        radius: 23,
                      ),
                    ),
                    Positioned(
                      left: 85.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/th (2).jpg"),
                        radius: 23,
                      ),
                    ),
                    Positioned(
                      left: 120.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/th (3).jpg"),
                        radius: 23,
                      ),
                    ),
                    Positioned(
                      left: 155.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/th (4).jpg"),
                        radius: 23,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0.9, 0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  elevation: 0.8,
                  color: kdeepblue,
                  onPressed: () {},
                  child: CustomText(
                    text: "See more",
                    fs: 16,
                    clr: kwhite,
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
