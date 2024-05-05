import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/components_of_bottom_bidders.dart';
class BiddersBottomSheet extends StatefulWidget {
  const BiddersBottomSheet({super.key});

  @override
  State<BiddersBottomSheet> createState() => _BiddersBottomSheetState();
}

class _BiddersBottomSheetState extends State<BiddersBottomSheet> {
final List<String> items = [
  'Male',
  'Female',

];
String? selectedValue; 
    @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: (){
                showModalBottomSheet(
                  
                  context: context, 
                  builder: (context){
                  return const ComponentsOfBidders();
                });
                },


                 child: Container(
                  height: 40,
                  width: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff325831)
                  ),
                  child: const Center(
                    child: Text('place a bit ',style: TextStyle(
                      fontFamily: poppinsBlackFont,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                      fontSize: 13
                    ),),
                  ),
                 ),
               );
       
    
  }
}