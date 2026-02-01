import 'package:flutter/material.dart';

class AuthOptionsScreen extends StatefulWidget {
  const AuthOptionsScreen({super.key});

  static const String name='/auth-options-screen';

  @override
  State<AuthOptionsScreen> createState() => _AuthOptionsScreenState();
}

class _AuthOptionsScreenState extends State<AuthOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Center(
                    child: Text('Welcome',style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      //height: 0.5
                    ),),
                  ),
                  Text('Study Smarter, Not Harder.',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/img1.png',width: 150,),
                  Text("Let's Get Started!",style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 20
                  ),)
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, AuthOptionsScreen.name);
                    },
                    child: Text('Sign Up with Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(double.maxFinite),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png',width: 30,),
                        SizedBox(width: 8,),
                        Text('Continue with Gmail',style: TextStyle(
                          fontSize: 15
                        ),)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(double.maxFinite),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFFb8aee0),
                        foregroundColor: Colors.black,
                        elevation: 6,
                        shadowColor: Colors.grey[200]
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: (){
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/apple.png',width: 30,),
                        SizedBox(width: 8,),
                        Text('Continue with Apple',style: TextStyle(
                          fontSize: 15
                        ),)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(double.maxFinite),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFFf1c40f),
                        foregroundColor: Colors.black,
                        elevation: 6,
                        shadowColor: Colors.grey[200]
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Already have an account?',style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[400]
                  ),),
                  SizedBox(height: 20,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By signing up you agree to the ',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 13,
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
                  )
                ],
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
