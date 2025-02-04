import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class DescripeOffersButton extends StatelessWidget {
  const DescripeOffersButton({
    super.key,
    required this.text,
    required this.buttonColor,
  });
  final String text;
  final MaterialStateProperty<Color?> buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: MediaQuery.sizeOf(context).width * 0.1.w,
        left: MediaQuery.sizeOf(context).width * 0.1.w,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: buttonColor,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
          ),
        ),
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kCleanuUpCheck);
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: 18.h,
            bottom: 18.h,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyles.font16BlackSemiBoldInter.copyWith(
                color: ColorsManager.mainWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
