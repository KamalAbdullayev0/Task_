import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_/src/config/router/router.gr.dart';
import 'package:test_/src/core/constants/image.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          width: 216,
          height: 216,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.splash),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    AutoRouter.of(context).replace(const Onboarding1Route());
  }
}
