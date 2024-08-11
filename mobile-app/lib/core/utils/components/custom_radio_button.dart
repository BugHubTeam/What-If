import 'package:flutter/material.dart';
import '../app_images.dart';
import 'custom_gradien_widget.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.ellipsRadio,
          height: 25,
        ),
        const CustomGradientWidget(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 5,
          ),
        )
      ],
    );
  }
}
