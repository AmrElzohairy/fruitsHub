import 'package:flutter/material.dart';
import 'package:fruits/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new)),
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
  );
}
