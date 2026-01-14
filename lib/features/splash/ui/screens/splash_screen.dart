import 'package:flutter/material.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name='/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();

  }

  Future<void> _moveToNextScreen() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, OnboardingScreenOne.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/img1.png',width: 200,),
          ),
          SizedBox(height: 20,),
          Text('My Study Buddy',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),)
        ],
      ),
    );
  }
}
