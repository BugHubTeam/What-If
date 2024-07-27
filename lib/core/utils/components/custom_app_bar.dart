import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../styles.dart';
import 'custom_gradien_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 55, bottom: 22),
      child: Row(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_back,
              size: 37,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(flex: 1),
          CustomGradientWidget(
            child: Text(
              title.tr(),
              style: Styles.textStyle24,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
