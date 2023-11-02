import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/detail_property/payment_successful.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PayNow extends StatelessWidget {
  const PayNow({super.key});

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
                    'Pay Now',
                    style: TextStyle(
                      color: AppColor.kxFF000000,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 42),
              Text(
                'Credit / Debit Card',
                style: TextStyle(
                  color: AppColor.kxFF000000,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 13),
              Text(
                'By adding debit/credit card,you agree to the',
                style: TextStyle(
                  color: Color(0xFF8C8FA5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Terms & Conditions',
                style: TextStyle(
                  color: Color(0xFF555FD2),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("${iconpath}person.svg"),
                        SizedBox(width: 10),
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Color(0xFF8C8FA5),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 13),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 25,
                      child: TextField(
                        decoration:InputDecoration(
                          filled: true,
                          fillColor: AppColor.k0xFFFFFFFF,
                          hintText: 'Enter Card Holder Full Name',
                          hintStyle: TextStyle(
                            color: Color(0xFF8C8FA5),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0x668C8FA5),
                              )
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0x668C8FA5),
                              )
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("${iconpath}card.svg"),
                        SizedBox(width: 10),
                        Text(
                          'Card number',
                          style: TextStyle(
                            color: Color(0xFF8C8FA5),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 13),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 25,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(16),
                        ],
                        decoration:InputDecoration(
                            filled: true,
                            fillColor: AppColor.k0xFFFFFFFF,
                            hintText: 'Enter card number',
                            hintStyle: TextStyle(
                              color: Color(0xFF8C8FA5),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0x668C8FA5),
                                )
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0x668C8FA5),
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("${iconpath}card.svg"),
                            SizedBox(width: 10),
                            Text(
                              'Expire date',
                              style: TextStyle(
                                color: Color(0xFF8C8FA5),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 13),
                        Container(
                          width: MediaQuery.of(context).size.width*.42,
                          height: 25,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(8),
                            ],
                            decoration:InputDecoration(
                                filled: true,
                                fillColor: AppColor.k0xFFFFFFFF,
                                hintText: 'DD - MM - YYYY',
                                hintStyle: TextStyle(
                                  color: Color(0xFF8C8FA5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0x668C8FA5),
                                    )
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0x668C8FA5),
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("${iconpath}card.svg"),
                            SizedBox(width: 10),
                            Text(
                              'CVV',
                              style: TextStyle(
                                color: Color(0xFF8C8FA5),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 13),
                        Container(
                          width: MediaQuery.of(context).size.width*.42,
                          height: 25,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(3),
                            ],
                            decoration:InputDecoration(
                                filled: true,
                                fillColor: AppColor.k0xFFFFFFFF,
                                hintText: 'Enter CVV number',
                                hintStyle: TextStyle(
                                  color: Color(0xFF8C8FA5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0x668C8FA5),
                                    )
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0x668C8FA5),
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 230),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentSuccessful(),));
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
