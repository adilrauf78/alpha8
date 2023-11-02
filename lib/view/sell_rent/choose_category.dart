import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ChooseCategory extends StatelessWidget {
  const ChooseCategory({super.key});

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
                  'Choose Category',
                  style: TextStyle(
                    color: AppColor.kxFF000000,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 26,
              decoration: BoxDecoration(
                color: AppColor.k0xFFFFFFFF,
              ),
              child: Row(
                children: [
                  SvgPicture.asset("${iconpath}house.svg",
                  color: AppColor.k0xFF444444,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'House/Villa',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 26,
              decoration: BoxDecoration(
                color: AppColor.k0xFFFFFFFF,
              ),
              child: Row(
                children: [
                  SvgPicture.asset("${iconpath}land.svg",
                    color: AppColor.k0xFF444444,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Land & Plots',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 26,
              decoration: BoxDecoration(
                color: AppColor.k0xFFFFFFFF,
              ),
              child: Row(
                children: [
                  SvgPicture.asset("${iconpath}commercial.svg",
                    color: AppColor.k0xFF444444,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Commercial',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 26,
              decoration: BoxDecoration(
                color: AppColor.k0xFFFFFFFF,
              ),
              child: Row(
                children: [
                  SvgPicture.asset("${iconpath}appartment.svg",
                    color: AppColor.k0xFF444444,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Appartment & Flats',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 26,
              decoration: BoxDecoration(
                color: AppColor.k0xFFFFFFFF,
              ),
              child: Row(
                children: [
                  SvgPicture.asset("${iconpath}floor.svg",
                    color: AppColor.k0xFF444444,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Portion & Floor',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
