import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';
import 'package:machine_test/screens/meetup_screen/description_screen/widgets/custom_icons.dart';
import 'package:machine_test/screens/meetup_screen/meetup_screen/widgets/carousel_image_container.dart';
import 'package:machine_test/utils.dart';
import 'package:share/share.dart';
import 'package:star_rating/star_rating.dart';

class DescriptionPage
    extends StatefulWidget {
  const DescriptionPage(
      {super.key});

  @override
  State<DescriptionPage>
      createState() =>
          _DescriptionPageState();
}

class _DescriptionPageState
    extends State<
        DescriptionPage> {
  int _currentIndex =
      0;
  @override
  Widget build(
      BuildContext
          context) {
    return Scaffold(
      appBar:
          AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: CustomText(
          text: "Description",
          fs: 24,
          fw: FontWeight.w500,
        ),
      ),
      body:
          ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 400,
            decoration: BoxDecoration(color: kAshLight, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: CarouselSlider(
                        items: const [
                          CarouselImgContainer(image: "assets/images/des1.jpg"),
                          CarouselImgContainer(image: "assets/images/des2.jpg"),
                          CarouselImgContainer(image: "assets/images/des3.jpg"),
                        ],
                        options: CarouselOptions(
                          height: 350,
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 150,
                      child: DotsIndicator(
                        position: _currentIndex,
                        dotsCount: 3,
                        decorator: DotsDecorator(
                          color: kLightGrey,
                          activeColor: kwhite,
                          size: Size.square(8.0),
                          activeSize: Size.square(8.0),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(icon: Icons.file_download_outlined),
                    CustomIconButton(icon: Icons.bookmark_border_outlined),
                    CustomIconButton(icon: Icons.favorite_border),
                    CustomIconButton(icon: Icons.filter_center_focus_outlined, onPressed: () {}),
                    CustomIconButton(icon: Icons.star_border, onPressed: () {}),
                    CustomIconButton(
                        icon: Icons.share_outlined,
                        onPressed: () {
                          Share();
                        }),
                  ],
                ),
              ],
            ),
          ),
          kHeight10,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.bookmark_border,
                  color: kblue,
                  size: 20,
                ),
                kWidth10,
                CustomText(
                  text: "1034",
                  fs: 16,
                ),
                kWidth20,
                Icon(
                  Icons.favorite_border,
                  color: kblue,
                  size: 20,
                ),
                kWidth10,
                CustomText(text: "1034", fs: 16),
                kWidth20,
                Container(
                  decoration: BoxDecoration(color: kAshLight, borderRadius: BorderRadius.circular(30)),
                  child: StarRating(
                    length: 5,
                    rating: 3.5,
                    between: 2,
                    starSize: 15,
                    color: kSkyblue,
                  ),
                ),
                kWidth20,
                CustomText(text: "3.2", clr: kblue, fs: 16),
              ],
            ),
          ),
          kHeight20,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                  text: "Actor Name",
                  fs: 19,
                  fw: FontWeight.w500,
                ),
                CustomText(
                  text: "Indian Actress",
                  fs: 17,
                  clr: kgrey,
                ),
                kHeight10,
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 18,
                      color: kgrey,
                    ),
                    kWidth5,
                    CustomText(
                      text: "Duration 20 Mins",
                      fs: 17,
                      clr: kgrey,
                    ),
                  ],
                ),
                kHeight10,
                Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 18,
                      color: kgrey,
                    ),
                    kWidth5,
                    CustomText(
                      text: "Total Average Fees ₹9,999",
                      fs: 17,
                      clr: kgrey,
                    ),
                  ],
                ),
                kHeight20,
                CustomText(
                  text: "About",
                  fs: 19,
                  fw: FontWeight.w500,
                ),
                kHeight10,
                CustomText(
                  text: "From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one sessio out on the waves. So, you may find yourself wondering what are the venefits of going on a surf camp.",
                  fs: 17,
                  clr: kgrey,
                ),
                
              ],
            ),
          ), 
          Align(
            alignment: Alignment(0.9, 1),
            child: TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "See More",
                  fs: 18,
                )),
          ),
        ],
      ),
    );
  }
}
