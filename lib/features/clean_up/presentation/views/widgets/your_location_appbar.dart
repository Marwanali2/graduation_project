import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/back_container.dart';
import 'package:graduation_project/features/clean_up/presentation/views/widgets/location_service.dart';

// ignore: must_be_immutable
class YourLocationAppBar extends StatelessWidget {
  YourLocationAppBar({
    super.key,
    required this.placemarks,
  });
  LocationService locationService = LocationService();
  final List<Placemark> placemarks;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: const BackContainerWidget(),
        ),
        SizedBox(
          width: 7.w,
        ),
        Expanded(
          child: Text(
            '${placemarks[0].locality}, ${placemarks[0].subAdministrativeArea}, ${placemarks[0].administrativeArea}',
            style: TextStyles.font20BlackMeduim,
          ),
        ),
      ],
    );
  }

  /* void getUserLocationFromLocationService() async {
    LocationData? userLocation = await locationService.getUserLocation();
    LatLng userLatLong =
        LatLng(userLocation!.latitude!, userLocation!.longitude!);

    if (userLocation != null) {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          userLocation!.latitude!, userLocation!.longitude!);
      
      print(placemarks[0].street);
      print(
          'User Location: ${userLocation.latitude}, ${userLocation.longitude}');
    } else {
      print('Failed to get user location.');
    }
  } */
}
