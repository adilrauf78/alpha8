import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdsDetails extends StatelessWidget {
  const AdsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.asset("${imagepath}adsdetails.png",
                    width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                            child: SvgPicture.asset("${iconpath}arrow.svg",color: AppColor.k0xFFFFFFFF,)
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.k0xFFFFFFFF,
                            border: Border.all(
                              color: AppColor.k0xFF2F3571,
                            )
                          ),
                          child: Center(child: SvgPicture.asset("${iconpath}favorite.svg")),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: 238,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        Container(
                          width: 59,
                          height: 21,
                          decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Sale',
                              style: TextStyle(
                                color: AppColor.k0xFFE76D40,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Luxary Family House',
                      style: TextStyle(
                        color: AppColor.k0xFF444444,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$ 25,000',
                      style: TextStyle(
                        color: AppColor.k0xFF444444,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        SvgPicture.asset("${iconpath}location.svg",width: 20,height: 20,),
                        SizedBox(width: 5),
                        Text(
                          '24 street 5 New Youk, USA',
                          style: TextStyle(
                            color: Color(0x80000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFE5E5E5),
                              width: 2,
                            ),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SvgPicture.asset("${iconpath}beds.svg"),
                                  SizedBox(height: 10),
                                  Text(
                                    '4 Beds',
                                    style: TextStyle(
                                      color: AppColor.kxFF000000,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SvgPicture.asset("${iconpath}baths.svg"),
                                  SizedBox(height: 10),
                                  Text(
                                    '3 Baths',
                                    style: TextStyle(
                                      color: AppColor.kxFF000000,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SvgPicture.asset("${iconpath}square.svg"),
                                  SizedBox(height: 10),
                                  Text(
                                    '1200',
                                    style: TextStyle(
                                      color: AppColor.kxFF000000,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFE5E5E5),
                              width: 2,
                            ),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Area unit',
                              style: TextStyle(
                                color: AppColor.kxFF000000,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Meter Yards',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFE5E5E5),
                              width: 2,
                            ),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Furnished',
                              style: TextStyle(
                                color: AppColor.kxFF000000,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'UnFurnished',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFE5E5E5),
                              width: 2,
                            ),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Features',
                              style: TextStyle(
                                color: AppColor.kxFF000000,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  width: 99,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppColor.k0xFFFFFFFF,
                                    borderRadius: BorderRadius.circular(26),
                                    border: Border.all(
                                      color: AppColor.k0xFF9098B1,
                                      width: 1,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000),
                                        blurRadius: 4,
                                      )
                                    ]
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Study Room',
                                      style: TextStyle(
                                        color: AppColor.k0xFF9098B1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 97,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: AppColor.k0xFFFFFFFF,
                                      borderRadius: BorderRadius.circular(26),
                                      border: Border.all(
                                        color: AppColor.k0xFF9098B1,
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                        )
                                      ]
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Gym',
                                      style: TextStyle(
                                        color: AppColor.k0xFF9098B1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color(0xFFE5E5E5),
                              width: 2,
                            ),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Brief Description',
                              style: TextStyle(
                                color: AppColor.kxFF000000,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                                  'Lorem Ipsum has been the industrys standard dummy text ever since the'
                                  '1500sLorem Ipsum has been the industrys standard dummy text ever since the '
                                  '1500s',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search on Map',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Image.asset("${imagepath}map.png")
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Posted By',
                                style: TextStyle(
                                  color: AppColor.kxFF000000,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '13 feb 2023',
                                style: TextStyle(
                                  color: AppColor.k0xFF444444,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset("${imagepath}john.png",width: 59,height: 59,),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Micheal john',
                                    style: TextStyle(
                                      color: AppColor.kxFF000000,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Member since March 2022',
                                    style: TextStyle(
                                      color: AppColor.kxFF000000,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.42,
                          height: 55,
                          decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            border: Border.all(
                              color: AppColor.k0xFF34A00C,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: AppColor.k0xFF34A00C,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    actions: [
                                    Container(
                                      width: 244,
                                      height: 151,
                                      decoration: BoxDecoration(
                                        color: AppColor.k0xFFFFFFFF,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 20,top: 20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Are you sure you want to '
                                                'delete this AD?',
                                              style: TextStyle(
                                                color: AppColor.kxFF000000,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(height: 39),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(),
                                                Container(),
                                                GestureDetector(
                                                  onTap: (){
                                                    showDialog(
                                                        context: context,
                                                        builder: (context){
                                                          return AlertDialog(
                                                            actions: [
                                                              Container(
                                                                width: 244,
                                                                height: 151,
                                                                decoration: BoxDecoration(
                                                                  color: AppColor.k0xFFFFFFFF,
                                                                  borderRadius: BorderRadius.circular(10),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsets.only(left: 30,right: 30),
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    children: [
                                                                      Text(
                                                                        'Your AD is deleted '
                                                                            'successfully',
                                                                        style: TextStyle(
                                                                          color: AppColor.kxFF000000,
                                                                          fontWeight: FontWeight.w400,
                                                                          fontSize: 20,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          );
                                                        }
                                                    );
                                                  },
                                                  child: Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      color: AppColor.k0xFFD80027,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: (){
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'No',
                                                    style: TextStyle(
                                                      color: AppColor.k0xFF34A00C,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                    ],
                                  );
                                }
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width*.42,
                            height: 55,
                            decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              border: Border.all(
                                color: AppColor.k0xFFD80027,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: AppColor.k0xFFD80027,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColor.k0xFFE76D40,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Mark a Sold',
                          style: TextStyle(
                            color: AppColor.k0xFFFFFFFF,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
