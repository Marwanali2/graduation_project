import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/company_details_view_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/offer_container.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/images/Rectangle 210.png',
                ),
                const CompanyDetailsViewContainer(),
                Positioned(
                  left: 16.w,
                  top: 110.h,
                  child: SizedBox(
                    width: 51.w,
                    height: 51.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r)),
                      child: Image.asset(
                        'assets/images/anosa.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20.w,
                  top: 30.h,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const BackContainerWidget(),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 130.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Offers',
                              style: TextStyles.font22SemiGrey1SemiBold),
                          Container(
                            width: 7.w,
                            height: 7.h,
                            decoration: BoxDecoration(
                                color: ColorsManager.mainBlack,
                                borderRadius: BorderRadius.circular(50.r)),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text('Worktime',
                              style: TextStyles.font22SemiGrey1SemiBold),
                          Container(
                            width: 7.w,
                            height: 7.h,
                            decoration: BoxDecoration(
                                color: ColorsManager.mainBlack,
                                borderRadius: BorderRadius.circular(50.r)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const OfferContainer(),
                  SizedBox(height: 20.h),
                  const OfferContainer(),
                  SizedBox(height: 20.h),
                  const OfferContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}