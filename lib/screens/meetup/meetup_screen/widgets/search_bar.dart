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
      decoration:
          BoxDecoration(
        border: Border.all(color: Colors.grey),
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
                hintStyle: TextStyle(fontSize: 22, color: kgrey, fontWeight: FontWeight.w400),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
