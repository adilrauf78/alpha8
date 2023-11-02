import 'dart:io';

import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime? _date;
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
  pickImage(ImageSource Imagetype,String imagefirst) async {
    final image= await ImagePicker().pickImage(source: Imagetype);
    if (image==null) return;
    final imagetemp =  File(image.path);
    if (imagefirst=='Profile'){
      this.image1=imagetemp;
      setState(() => this.image1=imagetemp);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                      'Edit Profile',
                      style: TextStyle(
                        color: AppColor.kxFF000000,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      width: 130,
                        child: Center(
                          child: image1 != null ?ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(image1!,fit: BoxFit.fill,width: 100,height: 100,)) : Image.asset("${imagepath}photo.png",width: 100,height: 100,),
                        ),
                    ),
                    Positioned(
                      left: 93,
                      top: 33,
                      child: InkWell(
                        onTap: ()=>imagePickerOption('Profile'),
                        child: Container(
                          child: Center(
                              child: SvgPicture.asset("${iconpath}cameraa.svg",)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Your Name',
                        style: TextStyle(
                          color: AppColor.k0xFF444444,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFE5E5E5),
                              blurRadius: 5
                            )
                          ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Name',
                            filled: true,
                            fillColor: AppColor.k0xFFFFFFFF,
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 20,
                                minHeight: 20,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 8),
                                child: SvgPicture.asset("${iconpath}person.svg"),
                              ),
                            hintStyle: TextStyle(
                              color: AppColor.k0xFFC0C0C0,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xFFE5E5E5),
                              ),
                            )
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
                        'Enter Your Email',
                        style: TextStyle(
                          color: AppColor.k0xFF444444,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFE5E5E5),
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              filled: true,
                              fillColor: AppColor.k0xFFFFFFFF,
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 20,
                                minHeight: 20,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 8),
                                child: SvgPicture.asset("${iconpath}email.svg"),
                              ),
                              hintStyle: TextStyle(
                                color: AppColor.k0xFFC0C0C0,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                ),
                              )
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
                        'Enter Your Date of birth',
                        style: TextStyle(
                          color: AppColor.k0xFF444444,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () async {
                          final result = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2026),
                          );
                          if(result != null){
                            setState(() {
                              _date = result;
                            });
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(

                            color: AppColor.k0xFFFFFFFF,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFE5E5E5),
                                    blurRadius: 5
                                )
                              ]
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("${iconpath}date.svg"),
                              SizedBox(width: 8),
                              Text(
                                'Date of Birth',
                                style: TextStyle(
                                  color: AppColor.k0xFFC0C0C0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
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
                        'Write Something about you',
                        style: TextStyle(
                          color: AppColor.k0xFF444444,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFE5E5E5),
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: TextField(
                          minLines: 6,
                          maxLines: 6,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              hintText: 'Write Something about you',
                              filled: true,
                              contentPadding: EdgeInsets.all(15),
                              fillColor: AppColor.k0xFFFFFFFF,
                              hintStyle: TextStyle(
                                color: AppColor.k0xFFC0C0C0,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color(0xFFE5E5E5),
                                ),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 48),
                Container(
                  width: MediaQuery.of(context).size.width*.9,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColor.k0xFFE76D40,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: AppColor.k0xFFFFFFFF,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
