import 'package:flutter/material.dart';

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
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/img1.png',width: (size.width-20)/2.5,),
                    SizedBox(height: 10,),
                    Text('How It Works',textAlign: TextAlign.center,style: TextStyle(
                      //fontSize: 12,
                    ),),
                    SizedBox(height: 20,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset('assets/images/img6.png',width: size.width/2,height: 120,),
                      SizedBox(height: 10,),
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
                              color: Color(0xFFb8aee0),
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

                      ],
                    ),
                    SizedBox(height: 5,),
                    ElevatedButton(
                      onPressed: (){},
                      child: Text('Skip',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(double.maxFinite),
                          padding: EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          elevation: 0
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      child: Text('Next',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
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
