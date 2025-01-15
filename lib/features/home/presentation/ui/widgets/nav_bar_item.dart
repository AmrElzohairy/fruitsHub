
import 'package:flutter/material.dart';
import 'package:fruits/features/home/presentation/ui/widgets/active_nav_bar_item.dart';
import 'package:fruits/features/home/presentation/ui/widgets/inactive_nav_bar_item.dart';

import '../../../domain/entities/buttom_nav_bar_entity.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.iconImage,
    required this.isActive,
    required this.buttomNavBarEntity,
  });
  final String iconImage;
  final bool isActive;
  final ButtomNavBarEntity buttomNavBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(iconImage: iconImage)
        : InActiveItem(iconImage: buttomNavBarEntity.inActiveIcon);
  }
}
