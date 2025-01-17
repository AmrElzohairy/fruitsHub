import 'package:flutter/material.dart';
import 'package:fruits/features/home/domain/entities/buttom_nav_bar_entity.dart';
import 'package:fruits/features/home/presentation/ui/widgets/nav_bar_item.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: bottomNavItems.asMap().entries.map((e) {
            var index = e.key;
            var entry = e.value;
            return Expanded(
              flex: index == selectedIndex ? 3 : 2,
              child: GestureDetector(
                onTap:() {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: NavigationBarItem(
                  buttomNavBarEntity: entry,              
                  isSelected: selectedIndex == index,
                        
                ),
              ),
            );
          }).toList()),
    );
  }
}
