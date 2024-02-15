import 'package:flutter/material.dart';
import 'package:machine_test/utils.dart';

class CustomSearchBar
    extends StatelessWidget {
  const CustomSearchBar(
      {super.key});

  @override
  Widget build(
      BuildContext
          context) {
    return Container(
      height:
          50,
      decoration:
          BoxDecoration(
        border: Border.all(color: kblack, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding:
          EdgeInsets.symmetric(horizontal: 10),
      child:
          Row(
        
        children: [
          kWidth20,
          Container(
            width: 24,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/lens.png"))),
          ),
          kWidth10,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 22, color: kblack54, fontWeight: FontWeight.w400),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 26,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/mic.png"))),
          ),
        ],
      ),
    );
  }
}
