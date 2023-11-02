import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/detail_property/pay_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyNowScreen extends StatelessWidget {
  const BuyNowScreen({super.key});

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
                    'Buy or Visit',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColor.k0xFFE76D40,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x40000000),
                          blurRadius: 4
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      SvgPicture.asset("${iconpath}buynow.svg",color: AppColor.k0xFFFFFFFF,),
                      SizedBox(width: 20),
                      Text(
                        'Buy Now',
                        style: TextStyle(
                          color: AppColor.k0xFFFFFFFF,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'I have agree to the term of contract 50% have to be pay by '
    'owner of the property and if he sale the house 13% of the '
    'value will give to the platform.',
                  style: TextStyle(
                    color: Color(0xFF595959),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Amount',
                style: TextStyle(
                  color: AppColor.kxFF000000,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: '100',
                      filled: true,
                      fillColor: AppColor.k0xFFFFFFFF,
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 20,
                        minHeight: 20,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 8),
                        child: SvgPicture.asset("${iconpath}dollar.svg"),
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
              ),
              SizedBox(height: 320),
              GestureDetector(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => PayNow(),));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColor.k0xFFE76D40,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Pay Now',
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
        ),
      ),
    );
  }
}
