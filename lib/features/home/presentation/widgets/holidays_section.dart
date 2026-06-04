import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'holiday_item.dart';

class HolidaysSection extends StatelessWidget {
  const HolidaysSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upcoming Holidays",
          style: GoogleFonts.quicksand(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        const HolidayItem(
          month: "OCT",
          day: "14",
          title: "Indigenous Peoples' Day",
          subtitle: "Public Holiday • Monday",
          isActive: true,
        ),
        const SizedBox(height: 12),
        const HolidayItem(
          month: "NOV",
          day: "11",
          title: "Veterans Day",
          subtitle: "Public Holiday • Monday",
          isActive: false,
        ),
      ],
    );
  }
}
