import 'package:flutter/material.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_one.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_two.dart';
import 'package:study_helper_app/features/splash/ui/screens/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    late Widget route;
    if(settings.name==SplashScreen.name){
      route= SplashScreen();
    }
    else if(settings.name==OnboardingScreenOne.name){
      route=OnboardingScreenOne();
    }
    else if(settings.name==OnboardingScreenTwo.name){
      route=OnboardingScreenTwo();
    }

    return MaterialPageRoute(builder: (context){
      return route;
    });
  }
}