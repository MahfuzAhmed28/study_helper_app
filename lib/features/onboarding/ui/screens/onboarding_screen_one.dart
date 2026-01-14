import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  static const String name='/onboarding-screen-one';

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 30),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/img1.png',width: 150,),
              SizedBox(height: 10,),
              Text('Turn your notes, lectures, and videos into flashcards, quizzes, study guides and fun study games',textAlign: TextAlign.center,style: TextStyle(

              ),),
              SizedBox(height: 100,),
              Column(
                children: [
                  _buildStudyCard(image: 'assets/images/img2.png',content: 'Note'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStudyCard(image: 'assets/images/img3.png',content: 'Games'),
                      _buildStudyCard(image: 'assets/images/img3.png',content: 'Flash'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStudyCard({image, content}) {
    return Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.deepPurpleAccent,
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
                        Text(content,style: TextStyle(
                          fontSize: 14
                        ),)
                      ],
                    ),
                  ),
                );
  }
}
