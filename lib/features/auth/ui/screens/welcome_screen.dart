import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/home/ui/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String name='/welcome-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/img1.png',width: 150.w,),
                    5.verticalSpace,
                    Text("My Study Buddy",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp
                    ),),
                    70.verticalSpace,
                    Container(
                      height: 60.h,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color(0xFFb8aee0),
                              width: 1
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 5,
                                spreadRadius: 2
                            )
                          ]
                      ),
                      child: Center(
                        child: Text('What should I call?',style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp
                        ),),
                      ),
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, HomeScreen.name);
                  },
                  child: Text('Continue',style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500
                  ),),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(double.maxFinite),
                      padding: EdgeInsets.all(8.h),
                      backgroundColor: Color(0xFFb8aee0),
                      foregroundColor: Colors.black,
                      elevation: 6,
                      shadowColor: Colors.grey[200]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
