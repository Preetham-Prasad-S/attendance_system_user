import 'package:attendance_system_user/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LoginDesktopScreen extends StatelessWidget {
  const LoginDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 250, 255),
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      // color: const Color.fromARGB(
                      //       255,
                      //       206,
                      //       227,
                      //       255,
                      //     ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        SizedBox(
                          height: 450,
                          width: 450,
                          child: Image(
                            image: AssetImage("login-screen-image.png"),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Welcome Faculty & Staff",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: AppColors.blueColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 450,
                          child: Text(
                            "Your gateway to academic excellence and seamless attendance management",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: const Color.fromARGB(255, 243, 250, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color.fromARGB(
                            255,
                            206,
                            227,
                            255,
                          ),
                          child: Icon(
                            Ionicons.school,
                            size: 30,
                            color: AppColors.blueColor,
                          ),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextField(),
                              Text(
                                "Password",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextField(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
