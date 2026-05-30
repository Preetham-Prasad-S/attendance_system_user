import 'package:attendance_system_user/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginFormTitleWidget(),
          SizedBox(height: 40),
          Text(
            "User Login",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 450,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  LoginTextField(
                    labelText: "Email",
                    hintText: "eg : staff123@email.com",
                    icon: Icon(Ionicons.person_circle, size: 25),
                    isPassword: false,
                  ),
                  const SizedBox(height: 30),
                  LoginTextField(
                    labelText: "Password",
                    hintText: "• • • • • • • • • •  ",
                    icon: Icon(Ionicons.lock_closed),
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.quicksand(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blueColor,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      minimumSize: Size(double.infinity, 65),
                      foregroundColor: AppColors.whiteColor,
                      backgroundColor: AppColors.blueColor,
                      elevation: 2,
                      shadowColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(Ionicons.exit_outline, size: 25),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginFormTitleWidget extends StatelessWidget {
  const LoginFormTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color.fromARGB(255, 206, 227, 255),
          child: Icon(Ionicons.school, size: 30, color: AppColors.blueColor),
        ),
        SizedBox(height: 20),
        Text(
          "Faculty & Staff Portal",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        Text(
          "Attendance Management System",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 161, 161, 161),
          ),
        ),
      ],
    );
  }
}

class LoginTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Icon icon;
  final bool isPassword;
  const LoginTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        TextField(
          cursorColor: AppColors.blueColor,
          style: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            prefixIcon: icon,

            prefixIconColor: const Color.fromARGB(138, 72, 102, 144),
            filled: true,
            hintText: hintText,
            hintStyle: GoogleFonts.quicksand(
              color: const Color.fromARGB(138, 72, 102, 144),
              fontWeight: FontWeight.w500,
            ),
            fillColor: const Color.fromARGB(8, 29, 114, 232),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: const Color.fromARGB(47, 147, 147, 147),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: AppColors.blueColor, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
