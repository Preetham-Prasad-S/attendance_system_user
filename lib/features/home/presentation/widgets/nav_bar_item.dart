import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:attendance_system_user/core/app_colors.dart';

class NavBarItem extends StatelessWidget {
  final int index;
  final IconData icon;
  final IconData outlineIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.index,
    required this.icon,
    required this.outlineIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color itemColor = isSelected ? AppColors.blueColor : Colors.grey[500]!;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSelected ? icon : outlineIcon,
              color: itemColor,
              size: 22,
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: GoogleFonts.quicksand(
                color: itemColor,
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
