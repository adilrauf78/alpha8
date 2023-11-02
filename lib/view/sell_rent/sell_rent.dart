import 'dart:io';

import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/sell_rent/choose_category.dart';
import 'package:alpha8/view/sell_rent/feature.dart';
import 'package:alpha8/view/sell_rent/location.dart';
import 'package:alpha8/view/sell_rent/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toggle_switch/toggle_switch.dart';


class SellRent extends StatefulWidget {
  const SellRent({super.key});

  @override
  State<SellRent> createState() => _SellRentState();
}
class _SellRentState extends State<SellRent> {
  void imagePickerOption(String imageType) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        pickImage(ImageSource.camera,imageType);
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.k0xFFE76D40,
                      ),
                      icon: const Icon(Icons.camera),
                      label: const Text("CAMERA"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        pickImage(ImageSource.gallery,imageType);
                        Get.back();

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.k0xFFE76D40,
                      ),
                      icon: const Icon(Icons.image),
                      label: const Text("GALLERY"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.k0xFFE76D40,
                      ),
                      icon: const Icon(Icons.close),
                      label: const Text("CANCEL"),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

  File? image1;
  File? image2;
  pickImage(ImageSource Imagetype,String imagefirst) async {
    final image= await ImagePicker().pickImage(source: Imagetype);
    if (image==null) return;
    final imagetemp =  File(image.path);
    if (imagefirst=='UploadImage'){
      this.image1=imagetemp;
      setState(() => this.image1=imagetemp);
    }if(imagefirst=='UploadImage2'){
      this.image2=imagetemp;
      setState(() =>this.image2=imagetemp);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 55),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("${iconpath}arrow.svg")
                    ),
                    SizedBox(width: 35),
                    Text(
                      'Add Your Property',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: ToggleSwitch(
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
              ),
              SizedBox(height: 17),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Add Images',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Upload  upto 20 Images',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 92,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 20,right: 10),
                        itemCount: 20,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: ()=>imagePickerOption('UploadImage'),
                              child: Container(
                                width: 133,
                                decoration: BoxDecoration(
                                  color: AppColor.k0xFFFFFFFF,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0x80C4C4C4),
                                    width: 1,
                                  )
                                ),
                                child: Center(
                                  child: image1 != null ?ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.file(image1!,fit: BoxFit.cover,width: 150,height: 105,)) : Image.asset("${imagepath}upload.png"),
                                ),

                              ),
                            ),
                          );
                        },
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
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
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title*',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 5,left: 15),
                                filled: true,
                                hintStyle: TextStyle(
                                    color: AppColor.kxFF000000,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                ),
                                fillColor: AppColor.k0xFFFFFFFF,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                              ),
                            ),
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
                            'Price*',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 5,left: 15),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: AppColor.kxFF000000,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                                ),
                                fillColor: AppColor.k0xFFFFFFFF,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                              ),
                            ),
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
                            'Furnished*',
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
                            'Bed Rooms*',
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
                            'Bath Rooms*',
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Features()));
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
                              'Features',
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
                                    'None',
                                    style: TextStyle(
                                      color: AppColor.k0xFF444444,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14
                                    ),
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
                            'Area unit*',
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
                            'Area*',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 5,left: 15),
                                filled: true,
                                hintStyle: TextStyle(
                                    color: AppColor.kxFF000000,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                ),
                                fillColor: AppColor.k0xFFFFFFFF,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0xFF9098B1),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
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
                            'Describe what you are selling*',
                            style: TextStyle(
                              color: AppColor.kxFF000000,
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            child: TextField(
                              minLines: 6,
                              maxLines: 6,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                fillColor: AppColor.k0xFFFFFFFF,
                                hintText: 'Describe.......',
                                filled: true,
                                contentPadding: EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9098B1),
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide(
                                      color: Color(0xFF9098B1),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TermsAndCondition()));
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
                    ),
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
