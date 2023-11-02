import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/account_screen/account_screen.dart';
import 'package:alpha8/view/home_screen/home_screen.dart';
import 'package:alpha8/view/message_screen/message_screen.dart';
import 'package:alpha8/view/sell_rent/sell_rent.dart';
import 'package:alpha8/view/shortlist_screen/shortlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int currentTab = 0;
  List _pages = [
    HomeScreen(),
    MessageScreen(),
    ShortListScreen(),
    AccountScreen(),

  ];
  _changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SellRent()));
        },
        child: Icon(Icons.add,color: AppColor.k0xFFE76D40,size: 30,),
        elevation: 5,
        backgroundColor: AppColor.k0xFFFFFFFF,
        shape: CircleBorder(
            side: BorderSide(
              color: AppColor.k0xFFE76D40,
            )
        ),
      ),

      bottomNavigationBar:
      BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: AppColor.k0xFFFFFFFF,
        child: Container(
          height: 67,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 15,),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 0;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("${iconpath}home.svg",color: currentTab == 0 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,),
                          SizedBox(height: 5),
                          Text(
                            ('Home'),
                            style: TextStyle(
                                color: currentTab == 0 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 1;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("${iconpath}message.svg",color: currentTab == 1 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,),
                          SizedBox(height: 8),
                          Text(
                            ('Message'),
                            style: TextStyle(
                                color: currentTab == 1 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Sell/Rent',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.k0xFFE76D40,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentTab = 2;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("${iconpath}shortlist.svg",color: currentTab == 2 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444),
                          SizedBox(height: 5),
                          Text(
                            'Shortlist',
                            style: TextStyle(
                                color: currentTab == 2 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  () {
                      setState(() {
                        currentTab = 3;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("${iconpath}account.svg",color: currentTab == 3 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,),
                          SizedBox(height: 5),
                          Text(
                            'Accouunt',
                            style: TextStyle(
                                color: currentTab == 3 ? AppColor.k0xFFE76D40 : AppColor.k0xFF444444,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: _pages[currentTab],

    );
  }
}
