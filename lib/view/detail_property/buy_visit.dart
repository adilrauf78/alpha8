import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/detail_property/buynow_screen.dart';
import 'package:alpha8/view/detail_property/vist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyOrVisit extends StatelessWidget {
  const BuyOrVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 55),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("${iconpath}arrow.svg")
                ),
                SizedBox(width: 35),
                Text(
                  'Buy or Visit',
                  style: TextStyle(
                    color: AppColor.kxFF000000,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VisitScreen(),));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.k0xFFFFFFFF,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 4
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      SvgPicture.asset("${iconpath}visit.svg"),
                      SizedBox(width: 20),
                      Text(
                        'Visit',
                        style: TextStyle(
                          color: Color(0xFF595959),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BuyNowScreen(),));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColor.k0xFFFFFFFF,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x40000000),
                          blurRadius: 4
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      SvgPicture.asset("${iconpath}buynow.svg"),
                      SizedBox(width: 20),
                      Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Color(0xFF595959),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 440),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColor.k0xFFE76D40,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: AppColor.k0xFFFFFFFF,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
