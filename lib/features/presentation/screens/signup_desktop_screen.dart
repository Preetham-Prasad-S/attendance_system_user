import 'package:attendance_system_user/core/app_colors.dart';
import 'package:attendance_system_user/features/presentation/widgets/login_form_widget.dart';
import 'package:attendance_system_user/features/presentation/widgets/auth_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class SignupDesktopScreen extends StatelessWidget {
  const SignupDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightScaffoldColor,
      body: Center(
        child: SizedBox(
          height: 800,
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
                  child: AuthPictureWidget(image: "signup-screen-picture.png"),
                ),
                Expanded(
                  child: Container(
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
                        AuthTitleWidget(),
                        SizedBox(height: 20),
                        Text(
                          "Signup ",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 450,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Column(
                              spacing: 10,
                              children: [
                                AuthTextField(
                                  labelText: "Name",
                                  hintText: "John Doe",
                                  icon: Icon(Ionicons.person),
                                  isPassword: false,
                                ),
                                AuthTextField(
                                  labelText: "Email",
                                  hintText: "eg : example@gmail.com",
                                  icon: Icon(Ionicons.person),
                                  isPassword: false,
                                ),
                                Row(
                                  spacing: 20,
                                  children: [
                                    Flexible(
                                      child: AuthTextField(
                                        labelText: "Department",
                                        hintText: "CSE, ECE, MECH, IT.....",
                                        icon: Icon(Ionicons.person),
                                        isPassword: false,
                                      ),
                                    ),
                                    Flexible(
                                      child: AuthTextField(
                                        labelText: "Phone No",
                                        hintText: "+91 1234567890",
                                        icon: Icon(Ionicons.person),
                                        isPassword: false,
                                      ),
                                    ),
                                  ],
                                ),
                                AuthTextField(
                                  labelText: "Password",
                                  hintText: "• • • • • • • • • •  ",
                                  icon: Icon(Ionicons.person),
                                  isPassword: false,
                                ),

                                Align(
                                  alignment: Alignment.centerRight,
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Do you have an account ? ",
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blueColor,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Login",
                                          style: GoogleFonts.quicksand(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                AppColors.blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: 5),
                                AuthButtonWidget(
                                  text: "Signup",
                                  icon: Icon(Ionicons.enter_outline, size: 25),
                                  onPressed: () {},
                                ),
                              ],
                            ),
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
