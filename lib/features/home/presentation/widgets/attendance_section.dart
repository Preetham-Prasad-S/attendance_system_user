import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:attendance_system_user/core/app_colors.dart';
import 'stat_card.dart';

class AttendanceSection extends StatelessWidget {
  const AttendanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Attendance This Month",
              style: GoogleFonts.quicksand(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Viewing all attendance records...",
                      style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                    ),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              child: Text(
                "View All",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blueColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Row(
          children: [
            Expanded(
              child: StatCard(
                icon: Icons.check,
                iconColor: Color(0xFF4CAF50),
                iconBgColor: Color(0xFFE8F5E9),
                count: "18",
                label: "PRESENT",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: StatCard(
                icon: Icons.close,
                iconColor: Color(0xFFF44336),
                iconBgColor: Color(0xFFFFEBEE),
                count: "01",
                label: "ABSENT",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: StatCard(
                icon: Icons.access_time_filled,
                iconColor: Color(0xFFFF9800),
                iconBgColor: Color(0xFFFFF3E0),
                count: "02",
                label: "LATE",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
