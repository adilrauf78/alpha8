import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List Location = [
    'Lahore',
    'Karachi',
    'Multan',
    'Jahanian',
  ];
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
                      child: Icon(Icons.close,color: AppColor.kxFF000000,)
                  ),
                  SizedBox(width: 35),
                  Text(
                    'Choose Location',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width,
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
                      hintText: 'Search area, City, Country',
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
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.my_location_outlined,
                  color: Colors.indigo,
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Use Current Location',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                padding: EdgeInsets.only(left: 10,top: 3),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    color: AppColor.kxFF000000,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: Location.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      padding: EdgeInsets.only(left: 15,top: 10),
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF9098B1),
                              width: 1,
                            ),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Location[index],
                            style: TextStyle(
                              color: AppColor.k0xFF444444,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SvgPicture.asset("${iconpath}arrrowup.svg")
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                padding: EdgeInsets.only(left: 10,top: 3),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Choose Regin',
                  style: TextStyle(
                    color: AppColor.kxFF000000,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  itemCount: Location.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      padding: EdgeInsets.only(left: 15,top: 10,),
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF9098B1),
                              width: 1,
                            ),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Location[index],
                            style: TextStyle(
                              color: AppColor.k0xFF444444,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SvgPicture.asset("${iconpath}arrrowup.svg")
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
