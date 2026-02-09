import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:study_helper_app/features/auth/ui/screens/resset_password_screen.dart';
import 'package:study_helper_app/features/auth/ui/screens/sign_up_screen.dart';

class ForgotPasswordVerificationOtpScreen extends StatefulWidget {
  const ForgotPasswordVerificationOtpScreen({super.key});

  static const String name='/forgot-password-verification-otp-screen';

  @override
  State<ForgotPasswordVerificationOtpScreen> createState() => _ForgotPasswordVerificationOtpScreenState();
}

class _ForgotPasswordVerificationOtpScreenState extends State<ForgotPasswordVerificationOtpScreen> {

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
                  100.verticalSpace,
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
                  50.verticalSpace
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
                        Text('Code Verification',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp
                        )),
                        15.verticalSpace,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text('Enter OTP(One Time Password) send to user@gmail.com',textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            height: 1.5,
                          )),
                        ),
                        20.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PinCodeTextField(
                              appContext: context,
                              length: 6,
                              animationType: AnimationType.fade,
                              backgroundColor: Colors.transparent,
                              enableActiveFill: true,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(8),
                                fieldHeight: 45.w,
                                fieldWidth: 45.w,
                                borderWidth: 1,
                                activeColor: Colors.grey,
                                inactiveColor: Colors.grey,
                                selectedColor: Colors.grey,

                                activeFillColor: Colors.white,
                                inactiveFillColor: Colors.white,
                                selectedFillColor: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Text('2:00 minutes',style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),)
                              ],
                            ),
                          ],
                        ),

                        15.verticalSpace,
                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, RessetPasswordScreen.name);
                          },
                          child: Text('Verify Code'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(double.maxFinite),
                              padding: EdgeInsets.all(12.h),
                              backgroundColor: Color(0xFFb8aee0),
                              foregroundColor: Colors.black,
                              elevation: 6,
                              shadowColor: Colors.grey[200]
                          ),
                        ),
                        10.verticalSpace,
                        ElevatedButton(
                          onPressed: (){
                          },
                          child: Text('Resend'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size.fromWidth(double.maxFinite),
                              padding: EdgeInsets.all(5.h),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.grey,
                              elevation: 0,
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
