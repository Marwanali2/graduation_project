import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class ComponentsOfBidders extends StatefulWidget {
  const ComponentsOfBidders({super.key});

  @override
  State<ComponentsOfBidders> createState() => _ComponentsOfBiddersState();
}

class _ComponentsOfBiddersState extends State<ComponentsOfBidders> {
  final TextEditingController nameController = TextEditingController();
  final Map<String, dynamic> data = {};

  double binegp = 0.00;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Place a bit ',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: robotoFont),
                ),
                Row(
                  children: [
                    Text(
                      'Time Left ',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(' 2h:45m:32s'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 56,
              width: 320,
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: borderColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 1, color: borderFormColor),
                  ),
                ),
                validator: (value) {
                  if (value == null) {
                    return "please , enter name !";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      if (binegp == 0.00) {
                        binegp = 0.00;
                        setState(() {});
                      } else {
                        binegp = binegp - 5;
                        setState(() {});
                      }
                    },
                    child: Image.asset('assests/images/minus.png')),
                Text(
                  'EGP ' + binegp.toString(),
                  style: Styles.textStyle20.copyWith(fontFamily: robotoFont),
                ),
                GestureDetector(
                    onTap: () {
                      binegp = binegp + 5;
                      setState(() {});
                    },
                    child: Image.asset('assests/images/plus.png'))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            //  const CheckboxOfGender(),
            Center(
                child: GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: Container(
                width: 126,
                height: 56,
                decoration: BoxDecoration(
                    color: borderFormColor,
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                    child: Text(
                  'Place a bit ',
                  style: TextStyle(color: whiteColor),
                )),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
