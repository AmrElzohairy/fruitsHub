import 'package:fruits/core/utils/app_images.dart';

class ButtomNavBarEntity {
  String activeIcon, inActiveIcon;
  String name;
  ButtomNavBarEntity(this.activeIcon, this.inActiveIcon, this.name);
}

List<ButtomNavBarEntity> get bottomNavItems => [
      ButtomNavBarEntity(Assets.imagesVuesaxBoldHome,
          Assets.imagesVuesaxOutlineHome, "الرئيسية"),
      ButtomNavBarEntity(Assets.imagesVuesaxBoldProduct,
          Assets.imagesVuesaxOutlineProduct, "المنتجات"),
      ButtomNavBarEntity(Assets.imagesVuesaxBoldShoppingCart,
          Assets.imagesVuesaxOutlineShoppingCart, "سلة التسوق"),
      ButtomNavBarEntity(
          Assets.imagesVuesaxBoldUser, Assets.imagesVuesaxOutlineUser, "حسابي"),
    ];
