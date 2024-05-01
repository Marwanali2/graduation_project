import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:flutter/cupertino.dart';
class EstimateOfDetails extends StatefulWidget {
  const EstimateOfDetails({super.key});

  @override
  State<EstimateOfDetails> createState() => _EstimateOfDetailsState();
}

class _EstimateOfDetailsState extends State<EstimateOfDetails> {


  @override
  Widget build(BuildContext context) {
    return Container(
            width:321,
            height:105,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: borderFormColor
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:15,right: 20,top:14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Estimate',style: Styles.textStyle12.copyWith(
                        fontFamily: robotoFont,
                        color: whiteColor,
                        fontWeight: FontWeight.w600
                        ),),
                        Text('Current bit',style: Styles.textStyle12.copyWith(
                        fontFamily: robotoFont,
                        color: whiteColor,
                        fontWeight: FontWeight.w600
                        ),), 
                    ],
                  ),
                  const SizedBox(height: 5,),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('EGP 100 - EGP 500',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: blackcolor,
                        fontFamily: robotoFont
                      ),),
                      Text('EGP 350',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: robotoFont
                      ),)
                    ],
                  ),
                 const SizedBox(height: 15,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               SizedBox(
                width: 160,
                 child: LinearProgressBar(
                       maxSteps: 3,
                       progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                       currentStep: 1,
                       progressColor: blackcolor,
                       backgroundColor: whiteColor,
                     ),
               ),
               Row(
                children: [
                  Image.asset('assests/images/solarstopwatchlineduotone.png'),
                  const SizedBox(width: 4,),
                 const Text('00:30',style: TextStyle(
                    color: whiteColor,
                    fontSize: 14,
                  ),),
                ],
               )

             ],
           )
                ],
              ),
            ),
          );
  }
}