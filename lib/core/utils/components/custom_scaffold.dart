import 'package:flutter/material.dart';
import '../app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.body,
    this.bgImage,
    this.floatingActionButton,
  });
  final Widget? body;
  final String? bgImage;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: bgImage == null
            ? const LinearGradient(
                colors: AppColors.scaffoldBgGradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        image: bgImage != null
            ? DecorationImage(
                image: AssetImage(bgImage!),
                fit: BoxFit.fill,
              )
            : null,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: body,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
