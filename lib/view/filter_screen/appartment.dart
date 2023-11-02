import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appartment extends StatefulWidget {
  const Appartment({super.key});

  @override
  State<Appartment> createState() => _AppartmentState();
}

class _AppartmentState extends State<Appartment> {
  List favorite = [
    'appartment',
    'appartment1',
    'appartment2',
    'appartment',
    'appartment1',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 55),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap:(){
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("${iconpath}arrow.svg")
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width*.65,
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
                        InkWell(
                            onTap: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (context) => Filter1()));
                            },
                            child: SvgPicture.asset("${iconpath}box.svg")
                        )

                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 130,
                        height: 36,
                        decoration: BoxDecoration(
                            color: AppColor.k0xFFFFFFFF,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Color(0xA6E76D40),
                            )
                        ),
                        child: Center(
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              color: Color(0xA6E76D40),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Appartment(),));
                        },
                        child: Container(
                          width: 130,
                          height: 36,
                          decoration: BoxDecoration(
                              color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Color(0xFF9098B1),
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Appartments',
                              style: TextStyle(
                                color: AppColor.kxFF000000,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
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
            SizedBox(height: 10),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 5,
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
                                Image.asset("${imagepath}${favorite[index]}.png",
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
                                        SizedBox(width: 10),
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
                                        SizedBox(width: 100),
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
