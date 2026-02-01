import 'package:flutter/material.dart';
import 'package:study_helper_app/features/auth/ui/screens/auth_options_screen.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  static const String name='/onboarding-screen-three';

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
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
                    Image.asset('assets/images/img1.png',width: (size.width-20)/2.5,),
                    SizedBox(height: 10,),
                    Text("Why you'll Love It",textAlign: TextAlign.center,style: TextStyle(
                      //fontSize: 12,
                    ),),
                    SizedBox(height: 20,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(1, 1)
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/img3.png'),
                              SizedBox(height: 10,),
                              Text('Play games with friends',style: TextStyle(
                                fontSize: 16
                              ),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Record or Upload your lectures and MyStudyBuddy will turn them into organized notes you can highlight, review and study from - instantly',textAlign: TextAlign.center,),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Color(0xFFb8aee0),
                              shape: BoxShape.circle
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, AuthOptionsScreen.name);
                      },
                      child: Text('Continue',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(double.maxFinite),
                          padding: EdgeInsets.all(15),
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
