import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:fruits/core/utils/app_images.dart';
import 'package:fruits/core/utils/app_text_styles.dart';
import 'package:fruits/features/home/presentation/ui/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 342 / 158,
      child: Stack(
        children: [
          Image.asset(Assets.imagesFeturedImageTest, fit: BoxFit.fill),
          Container(
            width: width * .5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: Svg(Assets.imagesFeaturedItemBackGround),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "عروض العيد",
                    style: TextStyles.regular13.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Spacer(),
                  Text(
                    "خصم 25%",
                    style: TextStyles.bold19.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  const Spacer(),
                  FeaturedItemButton(
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 32,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
