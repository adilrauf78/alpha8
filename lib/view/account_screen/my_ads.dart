import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/account_screen/ads_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyAds extends StatelessWidget {
  const MyAds({super.key});

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
                  'My ADS',
                  style: TextStyle(
                    color: AppColor.kxFF000000,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*.4,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColor.k0xFFE76D40,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Active ADS',
                      style: TextStyle(
                        color: AppColor.k0xFFFFFFFF,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AdsDetails(),));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*.4,
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColor.k0xFFFFFFFF,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          blurRadius: 10,
                        )
                      ]
                    ),
                    child: Center(
                      child: Text(
                        'Previous ADS',
                        style: TextStyle(
                          color: AppColor.kxFF000000,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 11,
              mainAxisSpacing: 24,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              childAspectRatio: (1/1.15),
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.k0xFFFFFFFF,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("${imagepath}ads.png",
                          width: 162,
                            height: 98,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Luxary Family House',
                                  style: TextStyle(
                                    color: AppColor.kxFF000000,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    SvgPicture.asset("${iconpath}location.svg",width: 12,height: 12,
                                      color: AppColor.k0xFF444444,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '24 street 5 New Youk, USA',
                                      style: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bed.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bath.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}area.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2000sqft',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$27500',
                                  style: TextStyle(
                                    color: AppColor.k0xFFE76D40,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 76,
                      child: Container(
                        width: 48,
                        height: 17,
                        decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                            ),
                          ]
                        ),
                        child: Center(
                          child: Text(
                            'Sale',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: AppColor.kxFF000000,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("${imagepath}ads1.png",
                            width: 162,
                            height: 98,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Farm House',
                                  style: TextStyle(
                                    color: AppColor.kxFF000000,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    SvgPicture.asset("${iconpath}location.svg",width: 12,height: 12,
                                      color: AppColor.k0xFF444444,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '24 street 5 New Youk, USA',
                                      style: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bed.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bath.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}area.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2000sqft',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$27500',
                                  style: TextStyle(
                                    color: AppColor.k0xFFE76D40,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 76,
                      child: Container(
                        width: 48,
                        height: 17,
                        decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                              ),
                            ]
                        ),
                        child: Center(
                          child: Text(
                            'Sale',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: AppColor.kxFF000000,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("${imagepath}ads2.png",
                            width: 162,
                            height: 98,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Luxary Family House',
                                  style: TextStyle(
                                    color: AppColor.kxFF000000,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    SvgPicture.asset("${iconpath}location.svg",width: 12,height: 12,
                                      color: AppColor.k0xFF444444,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '24 street 5 New Youk, USA',
                                      style: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bed.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bath.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}area.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2000sqft',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$27500',
                                  style: TextStyle(
                                    color: AppColor.k0xFFE76D40,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 76,
                      child: Container(
                        width: 48,
                        height: 17,
                        decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                              ),
                            ]
                        ),
                        child: Center(
                          child: Text(
                            'Sale',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: AppColor.kxFF000000,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("${imagepath}ads3.png",
                            width: 162,
                            height: 98,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Luxary Family House',
                                  style: TextStyle(
                                    color: AppColor.kxFF000000,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    SvgPicture.asset("${iconpath}location.svg",width: 12,height: 12,
                                      color: AppColor.k0xFF444444,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '24 street 5 New Youk, USA',
                                      style: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bed.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}bath.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}area.svg"),
                                          SizedBox(width: 3),
                                          Text(
                                            '2000sqft',
                                            style: TextStyle(
                                              color: AppColor.kxFF000000,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$27500',
                                  style: TextStyle(
                                    color: AppColor.k0xFFE76D40,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 76,
                      child: Container(
                        width: 48,
                        height: 17,
                        decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                              ),
                            ]
                        ),
                        child: Center(
                          child: Text(
                            'Sale',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: AppColor.kxFF000000,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
