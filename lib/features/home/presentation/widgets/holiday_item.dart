import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:attendance_system_user/core/app_colors.dart';

class HolidayItem extends StatelessWidget {
  final String month;
  final String day;
  final String title;
  final String subtitle;
  final bool isActive;

  const HolidayItem({
    super.key,
    required this.month,
    required this.day,
    required this.title,
    required this.subtitle,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final Color dateBgColor = isActive
        ? const Color(0xFFE8F0FE)
        : const Color(0xFFF1F3F4);
    final Color dateTextColor = isActive
        ? AppColors.blueColor
        : Colors.grey[600]!;

    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Holiday details: $title ($month $day)",
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.black.withOpacity(0.04),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.015),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: dateBgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    month,
                    style: GoogleFonts.quicksand(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: dateTextColor,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Text(
                    day,
                    style: GoogleFonts.quicksand(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: dateTextColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[400],
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
