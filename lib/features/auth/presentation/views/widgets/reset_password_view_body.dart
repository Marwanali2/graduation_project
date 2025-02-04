import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/custom_button_field.dart';
import 'package:graduation_project/core/widgets/custom_password_field.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/custom_title_widget.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController repeatpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
              child: Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTitleWidget(
                          title: '',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                            height: 39,
                            width: 304,
                            child: Text('Reset password',
                                style: Styles.textStyle30)),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                            height: 20,
                            child: Text(
                              'Please type something you’ll remember',
                              style: Styles.textStyle16.copyWith(
                                  color: blackcolor,
                                  fontFamily: interFont,
                                  fontWeight: FontWeight.w400),
                            )),
                        const SizedBox(
                          height: 31,
                        ),

                        SizedBox(
                            height: 105,
                            width: 310,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New password ',
                                  style: Styles.textStyle14.copyWith(
                                      color: blackcolor, fontFamily: interFont),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                CustomPasswordField(
                                  hintText: 'must be 8 characters',
                                  controller: passwordcontroller,
                                ),
                              ],
                            )),
                        // const SizedBox(height: 20,),
                        SizedBox(
                            height: 105,
                            width: 310,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm password ',
                                  style: Styles.textStyle14.copyWith(
                                      color: blackcolor, fontFamily: interFont),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                CustomPasswordField(
                                  hintText: 'repeat password',
                                  controller: repeatpasswordcontroller,
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButtonField(
                          text: 'Change password',
                          textcolor: borderFormColor,
                          ontap: () {
                            GoRouter.of(context).push(AppRouter.kSuccess);
                          },
                        )
                      ])))),
    );
  }
}
