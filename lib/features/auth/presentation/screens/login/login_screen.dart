import 'package:attendance_system_user/features/auth/presentation/screens/login/login_desktop_screen.dart';
import 'package:attendance_system_user/features/auth/presentation/screens/login/login_mobile_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 550) {
          return LoginDesktopScreen();
        }
        return LoginMobileScreen();
      },
    );
  }
}
