import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:attendance_system_user/core/app_colors.dart';

class ApplyLeaveCard extends StatelessWidget {
  const ApplyLeaveCard({super.key});

  @override
  Widget build(BuildContext context) {
    const lightBlueBg = Color(0xFFE9F6FF);
    const borderBlue = Color(0xFFBBE3FF);

    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Redirecting to Leave Application form...",
              style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
            ),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: lightBlueBg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: borderBlue,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                color: AppColors.blueColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Ionicons.calendar_outline,
                color: Colors.white,
                size: 22,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apply for Leave",
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blueColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Sick, Vacation, or Personal",
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      color: Colors.blue[400],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Ionicons.arrow_forward_outline,
              color: AppColors.blueColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
