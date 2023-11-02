import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/account_screen/edit_profile.dart';
import 'package:alpha8/view/account_screen/manage_account.dart';
import 'package:alpha8/view/account_screen/my_ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Padding(
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
                    'Account',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Image.asset("${imagepath}photo.png"),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Micheal John',
                        style: TextStyle(
                          color: AppColor.kxFF000000,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 22),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                        },
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColor.k0xFFE76D40,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 451,
                decoration: BoxDecoration(
                  color: AppColor.k0xFFFFFFFF,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 4,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 28),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ManageAccount(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.k0xFFFFFFFF,
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("${iconpath}manage.svg"),
                                  SizedBox(width: 10),
                                  SvgPicture.asset("${iconpath}line.svg"),
                                  SizedBox(width: 15),
                                  Text(
                                    'Manage Account',
                                    style: TextStyle(
                                      color: AppColor.k0xFF1B1C1E,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              SvgPicture.asset("${iconpath}arrrowup.svg"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyAds(),));
                        },
                        child: Container(
                          height: 38,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: AppColor.k0xFFC4C4C4,
                              )
                            )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("${iconpath}myadds.svg"),
                                  SizedBox(width: 10),
                                  SvgPicture.asset("${iconpath}line.svg"),
                                  SizedBox(width: 15),
                                  Text(
                                    'My Ads',
                                    style: TextStyle(
                                      color: AppColor.k0xFF1B1C1E,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              SvgPicture.asset("${iconpath}arrrowup.svg"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  color: AppColor.k0xFFC4C4C4,
                                )
                            )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("${iconpath}alarm.svg"),
                                SizedBox(width: 10),
                                SvgPicture.asset("${iconpath}line.svg"),
                                SizedBox(width: 15),
                                Text(
                                  'Notification',
                                  style: TextStyle(
                                    color: AppColor.k0xFF1B1C1E,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            SvgPicture.asset("${iconpath}arrrowup.svg"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  color: AppColor.k0xFFC4C4C4,
                                )
                            )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("${iconpath}language.svg",color: Color(0x73000000),),
                                SizedBox(width: 10),
                                SvgPicture.asset("${iconpath}line.svg"),
                                SizedBox(width: 15),
                                Text(
                                  'Languages',
                                  style: TextStyle(
                                    color: AppColor.k0xFF1B1C1E,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            SvgPicture.asset("${iconpath}arrrowup.svg"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  color: AppColor.k0xFFC4C4C4,
                                )
                            )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("${iconpath}privacy.svg"),
                                SizedBox(width: 10),
                                SvgPicture.asset("${iconpath}line.svg"),
                                SizedBox(width: 15),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    color: AppColor.k0xFF1B1C1E,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            SvgPicture.asset("${iconpath}arrrowup.svg"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  color: AppColor.k0xFFC4C4C4,
                                )
                            )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("${iconpath}share.svg"),
                                SizedBox(width: 10),
                                SvgPicture.asset("${iconpath}line.svg"),
                                SizedBox(width: 15),
                                Text(
                                  'Share App',
                                  style: TextStyle(
                                    color: AppColor.k0xFF1B1C1E,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                            SvgPicture.asset("${iconpath}arrrowup.svg"),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
