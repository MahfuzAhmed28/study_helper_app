import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/auth/ui/screens/auth_options_screen.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_three.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  static const String name='/onboarding-screen-two';

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    5.verticalSpace,
                    Image.asset('assets/images/img1.png',width: 130.w),
                    10.verticalSpace,
                    Text('How It Works',textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700]
                    ),),
                    10.verticalSpace
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/img6.png',width: 100.w,),
                      10.verticalSpace,
                      Text('Record or Upload your lectures and MyStudyBuddy will turn them into organized notes you can highlight, review and study from --- instantly',textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600]
                      ),),
                      20.verticalSpace
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 4.r,
                          backgroundColor: Colors.grey[400],
                        ),
                        10.horizontalSpace,
                        CircleAvatar(
                          radius: 4.r,
                          backgroundColor: Color(0xFFb8aee0),
                        ),
                        10.horizontalSpace,
                        CircleAvatar(
                          radius: 4.r,
                          backgroundColor: Colors.grey[400],
                        ),

                      ],
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, AuthOptionsScreen.name);
                      },
                      child: Text('Skip',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(double.maxFinite),
                          padding: EdgeInsets.all(9.h),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          elevation: 0
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, OnboardingScreenThree.name);
                      },
                      child: Text('Next',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(double.maxFinite),
                          padding: EdgeInsets.all(9.h),
                          backgroundColor: Color(0xFFb8aee0),
                          foregroundColor: Colors.black,
                          elevation: 6,
                          shadowColor: Colors.grey[200]
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStudyCard({image, content,length}) {
    return Container(
      width: length,
      height: length,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Color(0xFFb8aee0),
              width: 1
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                spreadRadius: 3,
                offset: Offset(4, 4)
            )
          ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: Column(
          children: [
            Image.asset(image),
            //SizedBox(height: 5,),
            Expanded(
              child: Text(content,style: TextStyle(
                  //fontSize: 14
              ),),
            )
          ],
        ),
      ),
    );
  }
}
