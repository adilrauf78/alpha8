import 'package:alpha8/constants/assets_path.dart';
import 'package:alpha8/constants/colors.dart';
import 'package:alpha8/view/sell_rent/successful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.k0xFFFFFFFF,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 55,bottom: 20),
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
                    'Property Listing and \n'
                    'Transaction Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.k0xFF444444,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                """
1. Introduction
Welcome to ALPHA8! This platform serves as a marketplace for property listings and transactions. Before you use our services, please read and understand the terms and conditions outlined in this policy.

2. Property Listing Terms
2.1. Agreement to Terms: When a property owner lists their house on our platform, they agree to the following terms:
The owner is responsible for paying 50% of the listing fee.
If the listed property is sold, 13% of the property's sale value will be paid to the platform.
2.2. Property Visit Fee: Prospective buyers or renters are required to pay a 10.000 FRCFA fee to visit a property listed on our platform. A 24-hour notice is required before scheduling a visit.

3. User Fees
3.1. No Commission Fees: We do not charge any commission fees to buyers or renters of the property.
3.2. Fees for Service: Our platform charges two types of fees:
Visit Fee: The cost of visiting a property is borne by the person seeking to buy or rent.
Transaction Fee: After the successful sale or rental of a property, the owner is responsible for a 13% transaction fee, which is calculated based on the property's sale or rental value.

4. Privacy and Data Usage
We take your privacy seriously. Please review our Privacy Policy to understand how we collect, use, and protect your personal information.
5. Legal Compliance
It is important for all users to comply with applicable laws and regulations when using our platform. Any violation may result in the suspension or termination of your account.
6. Contact Information
If you have any questions or concerns regarding this policy or our services, please contact us at [Your Contact Information].
7. Changes to Policy
We reserve the right to modify or update this policy as needed. Any changes will be communicated to users through the platform.
By using ALPHA8, you agree to abide by these terms and conditions. If you do not agree with any part of this policy, please refrain from using our services.""",
                style: TextStyle(
                  color: Color(0xFF5D5D5D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox(
                      value: ischecked,
                      activeColor: AppColor.k0xFFE76D40,
                      onChanged: (value){
                        setState(() {
                          ischecked = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 9),
                  Text(
                    'I have read the terms and conditions \n and agree with it.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF5D5D5D),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Successful(),));
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
                      'Submit',
                      style: TextStyle(
                        color: AppColor.k0xFFFFFFFF,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
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
