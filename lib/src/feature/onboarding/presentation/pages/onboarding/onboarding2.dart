import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_/src/config/router/router.gr.dart';
import 'package:test_/src/core/constants/image.dart';
import 'package:test_/src/core/widgets/custom_button.dart';

@RoutePage()
class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF102030), // Тёмный фон
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 309,
              height: 418,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.onboarding2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            const Text(
              'Keep training!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Start timer as you start workout to know what exercise is next',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: "Continue",
              onPressed: () {
                context.router.push(
                  const Onboarding3Route(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
