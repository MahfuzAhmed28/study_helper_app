import 'package:flutter/material.dart';
import 'package:study_helper_app/features/auth/ui/screens/auth_options_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/forgot_password_verification_otp_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/resset_password_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/sign_in_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/sign_up_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/terms_condition_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/welcome_screen.dart';
import 'package:study_helper_app/features/flashcard_creation/ui/screens/uploader_screen.dart';
import 'package:study_helper_app/features/home/ui/screens/home_screen.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_one.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_three.dart';
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
    else if(settings.name==OnboardingScreenThree.name){
      route=OnboardingScreenThree();
    }
    else if(settings.name==AuthOptionsScreen.name){
      route=AuthOptionsScreen();
    }
    else if(settings.name==SignInScreen.name){
      route=SignInScreen();
    }
    else if(settings.name==SignUpScreen.name){
      route=SignUpScreen();
    }
    else if(settings.name==ForgotPasswordScreen.name){
      route=ForgotPasswordScreen();
    }
    else if(settings.name==ForgotPasswordVerificationOtpScreen.name){
      route=ForgotPasswordVerificationOtpScreen();
    }
    else if(settings.name==RessetPasswordScreen.name){
      route=RessetPasswordScreen();
    }
    else if(settings.name==TermsConditionScreen.name){
      route=TermsConditionScreen();
    }
    else if(settings.name==WelcomeScreen.name){
      route=WelcomeScreen();
    }
    else if(settings.name==HomeScreen.name){
      route=HomeScreen();
    }
    else if(settings.name==UploaderScreen.name){
      route=UploaderScreen();
    }

    return MaterialPageRoute(builder: (context){
      return route;
    });
  }
}