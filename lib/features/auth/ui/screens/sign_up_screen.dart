import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/auth/ui/screens/sign_in_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/auth/ui/screens/terms_condition_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name='/sign-up-screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _firstNameTEController=TextEditingController();
  final TextEditingController _lastNameTEController=TextEditingController();
  final TextEditingController _emailTEController=TextEditingController();
  final TextEditingController _passwordTEController=TextEditingController();
  final TextEditingController _retypePasswordTEController=TextEditingController();
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: 40.verticalSpace,
            ),
            SliverFillRemaining(
              hasScrollBody: false, // Allows content inside to be static
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  border: Border(
                    top: BorderSide(color: Color(0xFFb8aee0), width: 2),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, -5),
                    )
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        10.verticalSpace,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sign ',
                                style: TextStyle(
                                  color: Color(0xFFb8aee0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26.sp
                                )
                              ),
                              TextSpan(
                                  text: 'up for your account',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26.sp
                                  )
                              ),
                            ]
                          ),
                        ),
                        15.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('First Name',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.sp
                                      ),),
                                      5.verticalSpace,
                                      TextFormField(
                                        controller: _firstNameTEController,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10.h),
                                            hintText: 'Your Name',
                                            hintStyle: TextStyle(
                                                color: Colors.grey
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),

                                            )
                                        ),
                                        validator: (String? value){
                                          if(value?.trim().isEmpty ?? true){
                                            return 'Enter the email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 40.w,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Last Name',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.sp
                                      ),),
                                      5.verticalSpace,
                                      TextFormField(
                                        controller: _firstNameTEController,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10.h),
                                            hintText: 'Your Name',
                                            hintStyle: TextStyle(
                                                color: Colors.grey
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),

                                            )
                                        ),
                                        validator: (String? value){
                                          if(value?.trim().isEmpty ?? true){
                                            return 'Enter the email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            15.verticalSpace,
                            Text('Email',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp
                            ),),
                            5.verticalSpace,
                            TextFormField(
                              controller: _emailTEController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.h),
                                  hintText: 'example@gmail.com',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),

                                  )
                              ),
                              validator: (String? value){
                                if(value?.trim().isEmpty ?? true){
                                  return 'Enter the email';
                                }
                                return null;
                              },
                            ),
                            15.verticalSpace,
                            Text('Password',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp
                            ),),
                            5.verticalSpace,
                            TextFormField(
                              controller: _passwordTEController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.h),
                                  hintText: 'abc123',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),

                                  )
                              ),
                              validator: (String? value){
                                if(value?.trim().isEmpty ?? true){
                                  return 'Enter the email';
                                }
                                return null;
                              },
                            ),
                            15.verticalSpace,
                            Text('Re-type Password',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp
                            ),),
                            5.verticalSpace,
                            TextFormField(
                              controller: _retypePasswordTEController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.h),
                                  hintText: 'abc123',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),

                                  )
                              ),
                              validator: (String? value){
                                if(value?.trim().isEmpty ?? true){
                                  return 'Enter the email';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        SizedBox(
                          width: 110.w,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, TermsConditionScreen.name);
                            },
                            child: Text('Sign Up',style: TextStyle(
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
                        ),
                        30.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 140.w,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                child: Image.asset('assets/images/google.png',height: 30.h,),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size.fromWidth(double.maxFinite),
                                    padding: EdgeInsets.all(5.h),
                                    backgroundColor: Color(0xFFb8aee0),
                                    foregroundColor: Colors.black,
                                    elevation: 6,
                                    shadowColor: Colors.grey[200]
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.w,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                child: Image.asset('assets/images/apple.png',height: 30.h,),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size.fromWidth(double.maxFinite),
                                    padding: EdgeInsets.all(5.h),
                                    backgroundColor: Color(0xFFf1c40f),
                                    foregroundColor: Colors.black,
                                    elevation: 6,
                                    shadowColor: Colors.grey[200]
                                ),
                              ),
                            )

                          ],
                        ),
                        20.verticalSpace,
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, SignInScreen.name);
                          },
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Have an account? ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.sp
                                      )
                                  ),
                                  TextSpan(
                                      text: 'Log In',
                                      style: TextStyle(
                                          color: Color(0xFFb8aee0),
                                          fontSize: 13.sp
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ),
                        20.verticalSpace,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'By signing up you agree to the ',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.sp,
                                    )
                                ),
                                TextSpan(
                                    text: 'Terms and Conditions ',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 12.sp,
                                    )
                                ),
                                TextSpan(
                                    text: 'and ',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.sp,
                                    )
                                ),
                                TextSpan(
                                    text: 'Privacy and Policy ',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 12.sp,
                                    )
                                ),
                                TextSpan(
                                    text: 'of  my Study Buddy App',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12.sp,
                                    )
                                ),
                              ]
                          ),
                        )


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
