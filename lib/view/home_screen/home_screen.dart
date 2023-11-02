import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/detail_property/detail_property.dart';
import 'package:alpha8/view/filter_screen/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Daniel',
                    style: TextStyle(
                      color: Color(0xFF444444),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SvgPicture.asset("${iconpath}notification.svg"),
                ],
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,),
              child: Row(
                children: [
                  SvgPicture.asset("${iconpath}location.svg"),
                  SizedBox(width: 3),
                  Text(
                    'Majeedhee Magu Rd, Malé, Maldives',
                    style: TextStyle(
                      color: AppColor.k0xFF9098B1,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.78,
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColor.k0xFFFFFFFF,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                        blurRadius: 5,
                          color: Color(0xFFE5E5E5),
                      )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: AppColor.k0xFFC0C0C0,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 10),
                          child: SvgPicture.asset("${iconpath}search.svg"),
                        ),
                        border: InputBorder.none,
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Filter(),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*.13,
                      height: 45,
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                            colors: [
                              Color(0xB3E76D40),
                              AppColor.k0xFFE76D40,
                            ]
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFE5E5E5),
                            )
                          ]
                      ),
                      child: Center(
                        child: SvgPicture.asset("${iconpath}filter.svg",
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top:5,bottom: 5),
                child: Row(
                  children: [
                    Container(
                      width: 128,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.k0xFFFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset("${iconpath}house.svg",color: AppColor.kxFF000000,),
                            SizedBox(width: 8),
                            Text(
                              'House/Villa',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 183,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.k0xFFFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset("${iconpath}appartment.svg",color: AppColor.kxFF000000,),
                            SizedBox(width: 8),
                            Text(
                              'Appartment & Flats',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 133,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.k0xFFFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset("${iconpath}land.svg",color: AppColor.kxFF000000,),
                            SizedBox(width: 8),
                            Text(
                              'Land & Plots',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 130,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.k0xFFFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset("${iconpath}commercial.svg",color: AppColor.kxFF000000,),
                            SizedBox(width: 8),
                            Text(
                              'Commercial',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 183,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.k0xFFFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset("${iconpath}floor.svg",color: AppColor.kxFF000000,),
                            SizedBox(width: 8),
                            Text(
                              'Portion & Floor',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near from you',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: AppColor.k0xFFE76D40,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 273,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10,),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProperty(),));
                          },
                          child: Container(
                            width: 244,
                            decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0x40000000),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  blurRadius: 5,
                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                Image.asset("${imagepath}villa.png",
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Gorgious Villa',
                                            style: TextStyle(
                                              color: AppColor.k0xFF444444,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SvgPicture.asset("${iconpath}favorite.svg")
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
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                SvgPicture.asset("${iconpath}bed.svg"),
                                                SizedBox(width: 5),
                                                Text(
                                                  '2',
                                                  style: TextStyle(
                                                    color: AppColor.kxFF000000,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                )
                                              ],
                                            ),

                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                SvgPicture.asset("${iconpath}bath.svg"),
                                                SizedBox(width: 5),
                                                Text(
                                                  '2',
                                                  style: TextStyle(
                                                    color: AppColor.kxFF000000,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                )
                                              ],
                                            ),

                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                SvgPicture.asset("${iconpath}area.svg"),
                                                SizedBox(width: 5),
                                                Text(
                                                  '2000sqft',
                                                  style: TextStyle(
                                                    color: AppColor.kxFF000000,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                  ),
                                                )
                                              ],
                                            ),

                                          ),
                                          Container(),

                                        ],
                                      ),
                                      SizedBox(height: 9),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset("${iconpath}location.svg",
                                                color: AppColor.k0xFF444444,
                                              ),
                                              SizedBox(width: 2),
                                              Text(
                                                'Majeedhee Magu Rd, Malé...',
                                                style: TextStyle(
                                                  color: AppColor.k0xFF444444,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          Text(
                                            '13feb',
                                            style: TextStyle(
                                              color: AppColor.k0xFF444444,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 18,
                          left: 169,
                          child: Container(
                            width: 59,
                            height: 21,
                            decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Rent',
                                style: TextStyle(
                                  color: AppColor.k0xFFE76D40,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended For You',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: AppColor.k0xFFE76D40,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(left: 10,right: 10),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 112,
                            decoration: BoxDecoration(
                                color: AppColor.k0xFFFFFFFF,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0x40000000),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 5,
                                  )
                                ]
                            ),
                            child: Row(
                              children: [
                                Image.asset("${imagepath}appartment.png",
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Appartment',
                                              style: TextStyle(
                                                color: AppColor.k0xFF444444,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              children: [
                                                SvgPicture.asset("${iconpath}location.svg",
                                                  color: AppColor.k0xFF444444,
                                                ),
                                                SizedBox(width: 2),
                                                Text(
                                                  'Majeedhee Magu Rd, Malé...',
                                                  style: TextStyle(
                                                    color: AppColor.k0xFF444444,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 25),
                                        SvgPicture.asset("${iconpath}favoritered.svg")
                                      ],
                                    ),
                                    SizedBox(height: 9),
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              SvgPicture.asset("${iconpath}bed.svg"),
                                              SizedBox(width: 5),
                                              Text(
                                                '2',
                                                style: TextStyle(
                                                  color: AppColor.kxFF000000,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
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
                                              SizedBox(width: 5),
                                              Text(
                                                '2',
                                                style: TextStyle(
                                                  color: AppColor.kxFF000000,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
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
                                              SizedBox(width: 5),
                                              Text(
                                                '2000sqft',
                                                style: TextStyle(
                                                  color: AppColor.kxFF000000,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$27500',
                                          style: TextStyle(
                                            color: AppColor.k0xFFE76D40,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 120),
                                        Text(
                                          '13feb',
                                          style: TextStyle(
                                            color: AppColor.k0xFF444444,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 4,
                            left: 50,
                            child: Container(
                              width: 59,
                              height: 21,
                              decoration: BoxDecoration(
                                color: AppColor.k0xFFFFFFFF,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Rent',
                                  style: TextStyle(
                                    color: AppColor.k0xFFE76D40,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
