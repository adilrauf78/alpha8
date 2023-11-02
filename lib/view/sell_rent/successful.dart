import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("${imagepath}tick.png")),
          SizedBox(height: 26),
          Text(
            'Thank You',
            style: TextStyle(
              color: AppColor.kxFF000000,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Text(
            'Your property added successfully',
            style: TextStyle(
              color: AppColor.kxFF000000,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}
