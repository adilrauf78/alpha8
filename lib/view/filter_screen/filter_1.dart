import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/sell_rent/choose_category.dart';
import 'package:alpha8/view/sell_rent/feature.dart';
import 'package:alpha8/view/sell_rent/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../sell_rent/location.dart';

class Filter1 extends StatelessWidget {
  const Filter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20,top: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        'Filter',
                        style: TextStyle(
                          color: AppColor.kxFF000000,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Clear All',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: 26),
              ToggleSwitch(
                minWidth: 90,
                minHeight: 30,
                cornerRadius: 26,
                borderColor: [
                  Color(0xFFC4C4C4),
                ],
                borderWidth: 1,
                activeBgColors: [[AppColor.k0xFFE76D40],[AppColor.k0xFFE76D40]],
                activeFgColor: Colors.white,
                inactiveBgColor: AppColor.k0xFFFFFFFF,
                inactiveFgColor: AppColor.kxFF000000,
                initialLabelIndex: 0,
                totalSwitches: 2,
                labels: [
                  'Sale',
                  'Rent',
                ],
                radiusStyle: true,
              ),
              SizedBox(height: 17),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseCategory()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColor.k0xFFFFFFFF,
                      border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF9098B1),
                            width: 1,
                          )
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          color: AppColor.kxFF000000,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("${iconpath}commercial.svg"),
                                SizedBox(width: 10),
                                Text(
                                  'Appartment and flats',
                                  style: TextStyle(
                                    color: AppColor.k0xFF444444,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset("${iconpath}arrrowup.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Location()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColor.k0xFFFFFFFF,
                      border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF9098B1),
                            width: 1,
                          )
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: AppColor.kxFF000000,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Turkey',
                              style: TextStyle(
                                  color: AppColor.k0xFF444444,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                              ),
                            ),
                            SvgPicture.asset("${iconpath}arrrowup.svg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: 150,
                              height: 34,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(15),
                                  filled: true,
                                  hintText: '500,00',
                                  hintStyle: TextStyle(
                                    color: AppColor.k0xFF444444,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                  ),
                                  fillColor: AppColor.k0xFFFFFFFF,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9098B1),
                                    )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color: Color(0xFF9098B1),
                                      )
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '\$100',
                              style: TextStyle(
                                  color: AppColor.k0xFF444444,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To',
                              style: TextStyle(
                                  color: AppColor.k0xFF444444,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: 150,
                              height: 34,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    filled: true,
                                    hintText: '500,00',
                                    hintStyle: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                    fillColor: AppColor.k0xFFFFFFFF,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFF9098B1),
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFF9098B1),
                                        )
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '\$100,000,00',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 72,
                decoration: BoxDecoration(
                    color: AppColor.k0xFFFFFFFF,
                    border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF9098B1),
                          width: 1,
                        )
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Furnished',
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
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFE5E5E5),
                              borderRadius: BorderRadius.circular(33),
                              border: Border.all(
                                color: AppColor.k0xFFE76D40,
                                width: 1,
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Furnished',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(33),
                          ),
                          child: Center(
                            child: Text(
                              'UnFurnished',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bed Rooms',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    ToggleSwitch(
                      minWidth: 60,
                      minHeight: 42,
                      initialLabelIndex: 2,
                      cornerRadius: 5,
                      activeFgColor: AppColor.k0xFFE76D40,
                      activeBorders: [
                        Border.all(
                            color: AppColor.k0xFFE76D40
                        )
                      ],
                      fontSize: 16,
                      dividerColor: AppColor.kxFF000000,

                      inactiveBgColor: AppColor.k0xFFFFFFFF,
                      inactiveFgColor: AppColor.kxFF000000,
                      totalSwitches: 5,
                      labels: [
                        '1',
                        '2',
                        '3',
                        '4',
                        '+5'
                      ],
                      borderWidth: 1,
                      borderColor: [AppColor.k0xFFC4C4C4],
                      activeBgColors: [[AppColor.k0xFFFFFFFF],[AppColor.k0xFFFFFFFF],
                        [AppColor.k0xFFFFFFFF],[AppColor.k0xFFFFFFFF],[AppColor.k0xFFFFFFFF]
                      ],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bath Rooms',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    ToggleSwitch(
                      minWidth: 60,
                      minHeight: 42,
                      initialLabelIndex: 2,
                      cornerRadius: 5,
                      activeFgColor: AppColor.k0xFFE76D40,
                      activeBorders: [
                        Border.all(
                            color: AppColor.k0xFFE76D40
                        )
                      ],
                      fontSize: 16,
                      dividerColor: AppColor.kxFF000000,

                      inactiveBgColor: AppColor.k0xFFFFFFFF,
                      inactiveFgColor: AppColor.kxFF000000,
                      totalSwitches: 5,
                      labels: [
                        '1',
                        '2',
                        '3',
                        '4',
                        '+5'
                      ],
                      borderWidth: 1,
                      borderColor: [AppColor.k0xFFC4C4C4],
                      activeBgColors: [[AppColor.k0xFFFFFFFF],[AppColor.k0xFFFFFFFF],
                        [AppColor.k0xFFFFFFFF],[AppColor.k0xFFFFFFFF],[AppColor.k0xFFFFFFFF]
                      ],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 72,
                decoration: BoxDecoration(
                    color: AppColor.k0xFFFFFFFF,
                    border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF9098B1),
                          width: 1,
                        )
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Area unit',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(33),
                              border: Border.all(
                                color: AppColor.k0xFFE76D40,
                                width: 1,
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Square feet',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(33),
                              border: Border.all(
                                color: AppColor.k0xFF444444,
                                width: 1,
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Square Meter',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(33),
                              border: Border.all(
                                color: AppColor.k0xFF444444,
                                width: 1,
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Square Yards',
                              style: TextStyle(
                                color: AppColor.k0xFF444444,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Area',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From',
                              style: TextStyle(
                                  color: AppColor.k0xFF444444,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: 150,
                              height: 34,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    filled: true,
                                    hintText: '0',
                                    hintStyle: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                    fillColor: AppColor.k0xFFFFFFFF,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFF9098B1),
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFF9098B1),
                                        )
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To',
                              style: TextStyle(
                                  color: AppColor.k0xFF444444,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: 150,
                              height: 34,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    filled: true,
                                    hintText: '500,00',
                                    hintStyle: TextStyle(
                                        color: AppColor.k0xFF444444,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                    fillColor: AppColor.k0xFFFFFFFF,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFF9098B1),
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFF9098B1),
                                        )
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 50),
              GestureDetector(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => TermsAndCondition()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: AppColor.k0xFFE76D40,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        color: AppColor.k0xFFFFFFFF,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
