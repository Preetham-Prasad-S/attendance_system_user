import 'package:attendance_system_user/core/app_colors.dart';
import 'package:attendance_system_user/features/presentation/widgets/login_form_widget.dart';
import 'package:attendance_system_user/features/presentation/widgets/auth_picture_widget.dart';
import 'package:flutter/material.dart';

class LoginDesktopScreen extends StatelessWidget {
  const LoginDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightScaffoldColor,
      body: Center(
        child: SizedBox(
          height: 700,
          width: 1300,
          child: Card(
            margin: EdgeInsets.all(0),
            shadowColor: const Color.fromARGB(104, 0, 0, 0),
            elevation: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AuthPictureWidget(image: "login-screen-image.png"),
                ),
                Expanded(child: LoginFormWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
