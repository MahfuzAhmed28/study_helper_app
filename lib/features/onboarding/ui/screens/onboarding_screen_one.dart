import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/auth/ui/screens/auth_options_screen.dart';
import 'package:study_helper_app/features/onboarding/ui/screens/onboarding_screen_two.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  static const String name='/onboarding-screen-one';

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
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
                    Text('Turn your notes, lectures, and videos into flashcards, quizzes, study guides and fun study games',textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700]
                    ),),
                  ],
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      _buildStudyCard(image: 'assets/images/img2.png',content: 'Note',length: (size.width-30)/3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildStudyCard(image: 'assets/images/img4.png',content: 'Flashcard',length: (size.width-30)/3),
                          _buildStudyCard(image: 'assets/images/img3.png',content: 'Games',length: (size.width-30)/3),
                        ],
                      ),
                      _buildStudyCard(image: 'assets/images/img5.png',content: 'Quiz',length: (size.width-30)/3),



                    ],
                  ),
                ),
                30.verticalSpace,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 4.r,
                          backgroundColor: Color(0xFFb8aee0),
                        ),
                        10.horizontalSpace,
                        CircleAvatar(
                          radius: 4.r,
                          backgroundColor: Colors.grey[400],
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
                        Navigator.pushReplacementNamed(context, OnboardingScreenTwo.name);
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
                    2.verticalSpace
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
      width: 95.h,
      height: 95.h,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Color(0xFFb8aee0),
              width: 1
          ),
          borderRadius: BorderRadius.circular(25.r),
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
        padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
        child: Column(
          children: [
            Image.asset(image,height: 70.h,),
            //SizedBox(height: 5,),
            Expanded(
              child: Text(content,style: TextStyle(
                  fontSize: 11.h
              ),),
            ),
            1.verticalSpace
          ],
        ),
      ),
    );
  }
}
