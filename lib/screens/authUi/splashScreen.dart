import 'package:discussion/utils/appConstant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Lottie.asset('assets/images/splash.json'),
              Text(
                AppConstant.appName,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blueGrey),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Developed By: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(AppConstant.createdBy)
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
