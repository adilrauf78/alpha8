import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  List Features = [
    'Drawing Room',
    'Dinning Room',
    'Kitchen',
    'Study Room',
    'Prayer Room',
    'Gym',
    'Store Room'
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
                    'Choose Features',
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
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: Features.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      padding: EdgeInsets.only(left: 15,top: 20),
                      decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          border: Border(
                              bottom: BorderSide(
                                color: Color(0xFF9098B1),
                                width: 1,
                              ),
                          )
                      ),
                      child: Text(
                        Features[index],
                        style: TextStyle(
                          color: AppColor.k0xFF444444,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColor.k0xFFC0C0C0,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
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
