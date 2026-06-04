import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:intl/intl.dart';
import 'package:attendance_system_user/core/app_colors.dart';

class ClockCard extends StatelessWidget {
  final DateTime currentTime;
  final bool isClockedIn;
  final VoidCallback onClockIn;
  final VoidCallback onClockOut;

  const ClockCard({
    super.key,
    required this.currentTime,
    required this.isClockedIn,
    required this.onClockIn,
    required this.onClockOut,
  });

  @override
  Widget build(BuildContext context) {
    final activeBg = Colors.white;
    final activeFg = AppColors.blueColor;
    final inactiveBg = Colors.white.withOpacity(0.12);
    final inactiveFg = Colors.white.withOpacity(0.5);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF1D72E8),
            Color(0xFF0C59CF),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0C59CF).withOpacity(0.25),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            DateFormat('EEEE, MMM dd yyyy').format(currentTime),
            style: GoogleFonts.quicksand(
              color: Colors.white.withOpacity(0.9),
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            DateFormat('hh:mm a').format(currentTime),
            style: GoogleFonts.quicksand(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: isClockedIn ? const Color(0xFF4CAF50) : const Color(0xFFFFB300),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  isClockedIn ? "Currently Clocked In" : "Currently Clocked Out",
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: !isClockedIn ? onClockIn : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: !isClockedIn ? activeBg : inactiveBg,
                    disabledBackgroundColor: inactiveBg,
                    elevation: !isClockedIn ? 2 : 0,
                    shadowColor: Colors.black26,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.log_in_outline,
                        size: 20,
                        color: !isClockedIn ? activeFg : inactiveFg,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Clock In",
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: !isClockedIn ? activeFg : inactiveFg,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: isClockedIn ? onClockOut : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isClockedIn ? activeBg : inactiveBg,
                    disabledBackgroundColor: inactiveBg,
                    elevation: isClockedIn ? 2 : 0,
                    shadowColor: Colors.black26,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.log_out_outline,
                        size: 20,
                        color: isClockedIn ? activeFg : inactiveFg,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Clock Out",
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isClockedIn ? activeFg : inactiveFg,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Shift: 09:00 AM - 05:00 PM",
            style: GoogleFonts.quicksand(
              color: Colors.white.withOpacity(0.75),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
