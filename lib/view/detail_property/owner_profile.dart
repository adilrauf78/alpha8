import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OwnerProfile extends StatelessWidget {
  const OwnerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Padding(
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
                    'Owner Profile',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 230,
                decoration: BoxDecoration(
                  color: AppColor.k0xFFFFFFFF,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 9,right: 9,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("${imagepath}owner.png",width: 65,height: 65,),
                          SizedBox(width: 13),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Micheal john',
                                style: TextStyle(
                                  color: AppColor.kxFF000000,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 13),
                              Row(
                                children: [
                                  Container(
                                    width: 85,
                                    height: 23,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(55),
                                      color: Color(0xFF00A664)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width:19,
                                            height:19,
                                              decoration: BoxDecoration(
                                                color: AppColor.k0xFFFFFFFF,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset("${iconpath}chat.svg",
                                                  width: 10,
                                                  height: 10,),
                                              )
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Message',
                                            style: TextStyle(
                                              color: AppColor.k0xFFFFFFFF,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 85,
                                    height: 23,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(55),
                                        color: AppColor.k0xFFE76D40,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width:19,
                                              height:19,
                                              decoration: BoxDecoration(
                                                color: AppColor.k0xFFFFFFFF,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset("${iconpath}contact.svg",
                                                  color: AppColor.k0xFFE76D40,
                                                  width: 10,
                                                  height: 10,),
                                              )
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                              color: AppColor.k0xFFFFFFFF,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 27,
                        decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            border: Border(
                                top: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                  width: 2,
                                ),
                                bottom: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                  width: 2,
                                )
                            ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Posted : 30',
                                style: TextStyle(
                                  color: AppColor.kxFF000000,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'Live : 20',
                                style: TextStyle(
                                  color: AppColor.kxFF000000,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'Sale : 10',
                                style: TextStyle(
                                  color: AppColor.kxFF000000,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'About Us:',
                        style: TextStyle(
                          color: AppColor.kxFF000000,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                            'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s '
                            'when an unknown printer took a galley of type and scrambled it to make a type '
                            'specimen book.',
                        style: TextStyle(
                          color: Color(0xB3000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Properties Posted',
                style: TextStyle(
                  color: AppColor.kxFF000000,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
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
      ),
    );
  }
}
