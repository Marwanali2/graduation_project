import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CustomButtonField extends StatelessWidget {
  const CustomButtonField({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff747474)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(text,style: Styles.textStyle16.copyWith(fontFamily: formFont)),),
      ),

    );
  }
}