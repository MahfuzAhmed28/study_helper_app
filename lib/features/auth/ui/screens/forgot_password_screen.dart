import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/auth/ui/screens/forgot_password_verification_otp_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/sign_up_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  static const String name='/forgot-password-screen';

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

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
                  130.verticalSpace,
                  Image.asset('assets/images/img1.png',height: 130.h,),
                  Text('Request Password Reset',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp
                  ),),
                  Text('Lorem ipsum dolor sit amet',style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]
                  ),),
                  60.verticalSpace
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
                        Text('Request Password',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp
                        )),
                        15.verticalSpace,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text('Please Enter your email then you will receive an email with a verification code to reset your password',textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            height: 1.5,
                          )),
                        ),
                        10.verticalSpace,
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
                          ],
                        ),
                        8.verticalSpace,
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, ForgotPasswordVerificationOtpScreen.name);
                          },
                          child: Text('Send Code'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(double.maxFinite),
                              padding: EdgeInsets.all(12.h),
                              backgroundColor: Color(0xFFb8aee0),
                              foregroundColor: Colors.black,
                              elevation: 6,
                              shadowColor: Colors.grey[200]
                          ),
                        ),
                        3.verticalSpace,

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
