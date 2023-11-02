import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

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
                      child: SvgPicture.asset("${iconpath}arrow.svg")
                  ),
                  SizedBox(width: 35),
                  Text(
                    'Messages',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 7,
                scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: AppColor.k0xFFFFFFFF,
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFA8C1C3),
                            )
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("${imagepath}message.png",width: 60,height: 60,),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Zunaira',
                                      style: TextStyle(
                                        color: AppColor.k0xFF2F3571,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Typing....',
                                      style: TextStyle(
                                        color: AppColor.kxFF000000,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '23 min',
                                  style: TextStyle(
                                    color: Color(0xFFA8C1C3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  width: 20,height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.k0xFFE76D40,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        color: AppColor.k0xFFFFFFFF,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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
