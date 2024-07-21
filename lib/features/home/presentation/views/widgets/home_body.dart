import 'package:flutter/material.dart';
import 'package:what_if/core/utils/components/custom_gradien_widget.dart';
import 'package:what_if/core/utils/fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: mediaQuery.height * 0.123,
            width: mediaQuery.width * 0.6,
            child: const CustomGradientWidget(
              child: Text(
                'WHATIF?!',
                style: TextStyle(
                  fontFamily: Fonts.moulFontFamily,
                  fontSize: 56,
                  fontWeight: FontWeight.w400,
                  height: 0.9,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
