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
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 22, color: kblack54, fontWeight: FontWeight.w400),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic_none,size: 30,),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}