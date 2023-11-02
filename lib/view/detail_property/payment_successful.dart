import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("${imagepath}tick.png")),
          SizedBox(height: 25),
          Text(
            textAlign: TextAlign.center,
            'Payment\n '
              'Successfully done',
            style: TextStyle(
              color: AppColor.kxFF000000,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
