import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/detail_property/buy_visit.dart';
import 'package:alpha8/view/detail_property/owner_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailProperty extends StatefulWidget {
  const DetailProperty({super.key});

  @override
  State<DetailProperty> createState() => _DetailPropertyState();
}

class _DetailPropertyState extends State<DetailProperty> {
  double _rating = 3;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.k0xFFFFFFFF,
        body: Column(
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                decoration:BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          color: Color(0xFFE5E5E5),
                        )
                    )
                ),
                child: TabBar(
                  labelColor: AppColor.k0xFFE76D40,
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: AppColor.k0xFF444444,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: 'Details',
                    ),
                    Tab(
                      text: 'Comments (1)',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 10,),
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
                                            ),
                                            SizedBox(height: 5),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => OwnerProfile(),));
                                              },
                                              child: Container(
                                                child: Text(
                                                  'View Profile and adds',
                                                  style: TextStyle(
                                                    color: AppColor.k0xFFE76D40,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
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
                            ],
                          ),
                        ),
                        SizedBox(height: 28),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 178,
                          decoration: BoxDecoration(
                            color: AppColor.k0xFF444444,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40,top: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*.42,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: AppColor.k0xFFFFFFFF,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 14,bottom: 14,left: 18,right: 18),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset("${iconpath}chats.svg"),
                                            SizedBox(width: 10),
                                            Text(
                                              'Message',
                                              style: TextStyle(
                                                color: AppColor.k0xFF444444,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*.42,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: AppColor.k0xFFFFFFFF,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 14,bottom: 14,left: 18,right: 18),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset("${iconpath}contact.svg"),
                                            SizedBox(width: 10),
                                            Text(
                                              'Contact',
                                              style: TextStyle(
                                                color: AppColor.k0xFF444444,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => BuyOrVisit(),));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:55,
                                    decoration: BoxDecoration(
                                      color: AppColor.k0xFFFFFFFF,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Buy or Visit',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rating & Reviews',
                            style: TextStyle(
                              color: AppColor.k0xFF444444,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: ListView.builder(
                                  itemCount: 2,
                                  scrollDirection: Axis.vertical,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context,index){
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 249,
                                        decoration: BoxDecoration(
                                          color: AppColor.k0xFFFFFFFF,
                                          borderRadius: BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xFFE5E5E5),
                                              blurRadius: 5
                                            )
                                          ]
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                height:50,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset("${imagepath}rating.png",width: 50,height: 50,),
                                                    SizedBox(width: 10),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Helene Moore',
                                                          style: TextStyle(
                                                            color: AppColor.k0xFF444444,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),
                                                        RatingBar.builder(
                                                            allowHalfRating: true,
                                                            initialRating: 4,
                                                            minRating: 1,
                                                            itemCount: 5,
                                                            itemSize: 15,
                                                            direction: Axis.horizontal,
                                                            unratedColor: Color(0xFF9B9B9B),
                                                            itemBuilder: (context, index)=>Icon(Icons.star,color: Color(0xFFFFBA49),),
                                                            onRatingUpdate: (rating){
                                                              setState(() {
                                                                _rating = rating;
                                                              });
                                                            }
                                                        ),
                                                        Text(
                                                          'June 5, 2019',
                                                          style: TextStyle(
                                                            color: AppColor.k0xFFC0C0C0,
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 11,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                                    'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, '
                                                    'when an unknown printer took a galley of type and scrambled it to make a type '
                                                    'specimen book. It has survived not only five centuries, but also the leap into '
                                                    'electronic type setting,',
                                                style: TextStyle(
                                                  color: AppColor.k0xFF444444,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                top: 320,
                                left: 170,
                                child: GestureDetector(
                                  onTap: (){
                                    showModalBottomSheet(
                                        context: context,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(34),
                                            topLeft: Radius.circular(34),
                                          ),
                                        ),
                                        builder: (context){
                                          return Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 494,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 16,left: 20,right: 20),
                                              child: Column(
                                                children: [
                                                  Center(
                                                    child: Container(
                                                      width: 60,
                                                      height: 6,
                                                      decoration: BoxDecoration(
                                                        color: AppColor.k0xFFC0C0C0,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),

                                                    ),
                                                  ),
                                                  SizedBox(height: 20),
                                                  Text(
                                                    'What is you rate?',
                                                    style: TextStyle(
                                                      color: AppColor.k0xFF444444,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                  RatingBar.builder(
                                                      allowHalfRating: true,
                                                      initialRating: 0,
                                                      minRating: 1,
                                                      itemCount: 5,
                                                      itemSize: 36,
                                                      itemPadding: EdgeInsets.only(right: 10,left: 10),
                                                      direction: Axis.horizontal,
                                                      unratedColor: AppColor.k0xFFC0C0C0,
                                                      itemBuilder: (context, index)=>Icon(Icons.star,color: Color(0xFFFFBA49),),
                                                      onRatingUpdate: (rating){
                                                        setState(() {
                                                          _rating = rating;
                                                        });
                                                      }
                                                  ),
                                                  SizedBox(height: 35),
                                                  Text(
                                                    textAlign: TextAlign.center,
                                                    'Please share your opinion \n'
                                                      'about the product',
                                                    style: TextStyle(
                                                      color: AppColor.k0xFF444444,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  SizedBox(height: 20),
                                                  TextField(
                                                    minLines: 6,
                                                    maxLines: 10,
                                                    keyboardType: TextInputType.multiline,
                                                    decoration: InputDecoration(
                                                      fillColor: AppColor.k0xFFFFFFFF,
                                                      filled: true,
                                                      contentPadding: EdgeInsets.all(15),
                                                      hintText: 'Your Review',
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(6),
                                                        borderSide: BorderSide(
                                                          color: Color(0xFFE5E5E5),
                                                        )
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(6),
                                                          borderSide: BorderSide(
                                                            color: Color(0xFFE5E5E5),
                                                          )
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 20),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 45,
                                                    decoration: BoxDecoration(
                                                      color: AppColor.k0xFFE76D40,
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Send Review',
                                                        style: TextStyle(
                                                          color: AppColor.k0xFFFFFFFF,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                    );
                                  },
                                  child: Container(
                                    width: 145,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColor.k0xFFE76D40,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset("${iconpath}pencil.svg"),
                                          SizedBox(width: 5),
                                          Text(
                                            'Write a review',
                                            style: TextStyle(
                                              color: AppColor.k0xFFFFFFFF,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
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
