import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  final int currentTab;
  final ValueChanged<int> onTabSelected;

  const BottomNavBar({
    super.key,
    required this.currentTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.15),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            index: 0,
            icon: Ionicons.grid,
            outlineIcon: Ionicons.grid_outline,
            label: "Dashboard",
            isSelected: currentTab == 0,
            onTap: () => onTabSelected(0),
          ),
          NavBarItem(
            index: 1,
            icon: Ionicons.time,
            outlineIcon: Ionicons.time_outline,
            label: "History",
            isSelected: currentTab == 1,
            onTap: () => onTabSelected(1),
          ),
          NavBarItem(
            index: 2,
            icon: Ionicons.calendar,
            outlineIcon: Ionicons.calendar_outline,
            label: "Leave",
            isSelected: currentTab == 2,
            onTap: () => onTabSelected(2),
          ),
          NavBarItem(
            index: 3,
            icon: Ionicons.person,
            outlineIcon: Ionicons.person_outline,
            label: "Profile",
            isSelected: currentTab == 3,
            onTap: () => onTabSelected(3),
          ),
        ],
      ),
    );
  }
}
