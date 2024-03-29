import 'package:discussion/screens/userPanel/homeScreen.dart';
import 'package:discussion/utils/appConstant.dart';
import 'package:discussion/widgets/appButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SignIn',
            style: TextStyle(color: AppConstant.appTextColor),
          ),
          backgroundColor: AppConstant.appMainColor,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: Get.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          label: Text('Email')),
                    ),
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                          label: Text('Password')),
                    )
                  ],
                ),
              ),
              AppButton(
                  buttonTitle: 'Sign In',
                  onPressed: () {
                    Get.to(const HomeScreen());
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Don't have account? "),
                    TextButton(onPressed: () {}, child: const Text('Sign Up'))
                  ],
                ),
              ),
              Material(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppConstant.appMainColor,
                  ),
                  height: 50,
                  width: Get.width / 1.1,
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/g.webp'),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Google Sign In',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppConstant.appTextColor),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
