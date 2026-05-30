import 'package:attendance_system_user/features/presentation/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: SizedBox(width: double.infinity, child: LoginFormWidget()),
        ),
      ),
    );
  }
}
