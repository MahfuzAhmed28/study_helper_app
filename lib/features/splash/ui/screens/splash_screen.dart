import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/flashcard_creation/ui/screens/uploader_screen.dart';
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
    Navigator.pushReplacementNamed(context, UploaderScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/img1.png',height: 200.h,),
            Text('My Study Buddy',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.sp
            ),)
          ],
        ),
      ),
    );
  }
}
