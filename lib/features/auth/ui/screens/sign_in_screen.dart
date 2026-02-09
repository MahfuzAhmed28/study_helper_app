import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name='/sign-in-screen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController _emailTEController=TextEditingController();
  final TextEditingController _passwordTEController=TextEditingController();
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  10.verticalSpace,
                  Image.asset('assets/images/img1.png',height: 105.h,),
                  Text('Welcome Back!',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp
                  ),),
                  Text('Login to your account',style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]
                  ),),
                  10.verticalSpace
                ],
              ),
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
                        5.verticalSpace,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Log ',
                                style: TextStyle(
                                  color: Color(0xFFb8aee0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.sp
                                )
                              ),
                              TextSpan(
                                  text: 'into your account',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.sp
                                  )
                              ),
                            ]
                          ),
                        ),
                        15.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp
                            ),),
                            5.verticalSpace,
                            TextFormField(
                              controller: _emailTEController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
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
                            10.verticalSpace,
                            Text('Password',style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp
                            ),),
                            5.verticalSpace,
                            TextFormField(
                              controller: _passwordTEController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
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
                        8.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushReplacementNamed(context, ForgotPasswordScreen.name);
                              },
                              child: Text('Forgot Password?',style: TextStyle(
                                color: Colors.orangeAccent
                              ),),
                            )
                          ],
                        ),
                        15.verticalSpace,
                        SizedBox(
                          width: 90.w,
                          child: ElevatedButton(
                            onPressed: (){
                            },
                            child: Text('Log In',style: TextStyle(
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
                        25.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 130.w,
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
                              width: 130.w,
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
                            Navigator.pushReplacementNamed(context, SignUpScreen.name);
                          },
                          child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'No account? ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.sp
                                      )
                                  ),
                                  TextSpan(
                                      text: ' Sign Up',
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
                                      fontSize: 11.sp,
                                    )
                                ),
                                TextSpan(
                                    text: 'Terms and Conditions ',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 13,
                                    )
                                ),
                                TextSpan(
                                    text: 'and ',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 13,
                                    )
                                ),
                                TextSpan(
                                    text: 'Privacy and Policy ',
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 13,
                                    )
                                ),
                                TextSpan(
                                    text: 'of  my Study Buddy App',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 13,
                                    )
                                ),
                              ]
                          ),
                        ),
                        2.verticalSpace,
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
