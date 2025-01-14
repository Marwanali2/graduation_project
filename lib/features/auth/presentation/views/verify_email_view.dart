import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/verify_email_view_body.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifyEmailViewBody(),
    );
  }
}
