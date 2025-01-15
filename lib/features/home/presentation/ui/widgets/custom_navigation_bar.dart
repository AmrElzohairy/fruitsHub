// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_images.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      child: InActiveItem(iconImage: Assets.imagesVuesaxOutlineHome),
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
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.iconImage,
  });
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconImage);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.iconImage,
  });
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconImage);
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.iconImage,
    required this.isActive,
  });
  final String iconImage;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(iconImage: iconImage)
        : InActiveItem(iconImage: iconImage);
  }
}
