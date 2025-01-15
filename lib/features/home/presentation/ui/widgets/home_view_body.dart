import 'package:flutter/material.dart';
import 'package:fruits/constants.dart';
import 'package:fruits/core/widgets/search_text_field.dart';
import 'package:fruits/features/home/presentation/ui/widgets/custom_home_appbar.dart';

import 'featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: kTopPadding,),
                CustomHomeAppbar(),
                SizedBox(
                  height: 16,
                ),
                SearchTextField(),
                SizedBox(
                  height: 16,
                ),
                FeaturedItem(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
