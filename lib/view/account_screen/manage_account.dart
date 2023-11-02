import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageAccount extends StatelessWidget {
  const ManageAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  'Manage Account',
                  style: TextStyle(
                    color: AppColor.kxFF000000,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 45),
            Container(
              child: Text(
                'Delete Account',
                style: TextStyle(
                  color: AppColor.k0xFFD80027,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: AppColor.k0xFFC4C4C4,
                        )
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
