import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:attendance_system_user/core/app_colors.dart';
import 'package:attendance_system_user/features/home/presentation/widgets/header_widget.dart';
import 'package:attendance_system_user/features/home/presentation/widgets/clock_card.dart';
import 'package:attendance_system_user/features/home/presentation/widgets/attendance_section.dart';
import 'package:attendance_system_user/features/home/presentation/widgets/holidays_section.dart';
import 'package:attendance_system_user/features/home/presentation/widgets/apply_leave_card.dart';
import 'package:attendance_system_user/features/home/presentation/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isClockedIn = false;
  late DateTime _currentTime;
  late Timer _timer;
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _currentTime = DateTime.now();
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightScaffoldColor,
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            decoration: BoxDecoration(
              color: AppColors.lightScaffoldColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeaderWidget(),
                        const SizedBox(height: 24),
                        ClockCard(
                          currentTime: _currentTime,
                          isClockedIn: _isClockedIn,
                          onClockIn: () {
                            setState(() {
                              _isClockedIn = true;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Clocked In successfully at ${DateFormat('hh:mm a').format(DateTime.now())}',
                                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                                ),
                                backgroundColor: const Color(0xFF4CAF50),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            );
                          },
                          onClockOut: () {
                            setState(() {
                              _isClockedIn = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Clocked Out successfully at ${DateFormat('hh:mm a').format(DateTime.now())}',
                                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
                                ),
                                backgroundColor: Colors.blueGrey[800],
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 28),
                        const AttendanceSection(),
                        const SizedBox(height: 28),
                        const HolidaysSection(),
                        const SizedBox(height: 24),
                        const ApplyLeaveCard(),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
                BottomNavBar(
                  currentTab: _currentTab,
                  onTabSelected: (index) {
                    setState(() {
                      _currentTab = index;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
