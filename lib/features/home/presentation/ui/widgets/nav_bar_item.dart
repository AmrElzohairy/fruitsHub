import 'package:flutter/material.dart';
import 'package:fruits/features/home/presentation/ui/widgets/active_nav_bar_item.dart';
import 'package:fruits/features/home/presentation/ui/widgets/inactive_nav_bar_item.dart';

import '../../../domain/entities/buttom_nav_bar_entity.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.buttomNavBarEntity,
  });

  final bool isSelected;
  final ButtomNavBarEntity buttomNavBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            iconImage: buttomNavBarEntity.activeIcon,
            text: buttomNavBarEntity.name,
          )
        : InActiveItem(iconImage: buttomNavBarEntity.inActiveIcon);
  }
}
