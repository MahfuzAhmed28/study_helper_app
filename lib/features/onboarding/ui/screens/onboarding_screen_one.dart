import 'package:flutter/material.dart';
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
        child: SingleChildScrollView
          (
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
                      Text('Turn your notes, lectures, and videos into flashcards, quizzes, study guides and fun study games',textAlign: TextAlign.center,style: TextStyle(
                        //fontSize: 12,
                      ),),
                      SizedBox(height: 20,)
                    ],
                  ),
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
                        SizedBox(height: 20,),


                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Color(0xFFb8aee0),
                          ),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.grey[400],
                          ),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.grey[400],
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
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, OnboardingScreenTwo.name);
                        },
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
                      //SizedBox(height: 10,)
                    ],
                  )
                ],
              ),
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
