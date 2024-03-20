import 'package:discussion/utils/appConstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  String buttonTitle;
  final VoidCallback onPressed;
  AppButton({super.key, required this.buttonTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppConstant.appSecondaryColor,
          ),
          height: 50,
          width: Get.width / 1.1,
          child: Center(
              child: Text(
            buttonTitle,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppConstant.appTextColor),
          )),
        ),
      ),
    );
  }
}
