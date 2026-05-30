import 'package:attendance_system_user/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPictureWidget extends StatelessWidget {
  final String image;
  const AuthPictureWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 450,
            width: 450,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image(image: AssetImage(image)),
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
    );
  }
}
