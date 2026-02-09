import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/features/flashcard_creation/ui/screens/uploader_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name='/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.sp
        ),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              _buildCreateGameCard(
                image: 'assets/images/img8.png',
                text: 'Flashcard Generation',
                bodyColor: Colors.pink.shade100,
                borderColor: Colors.pink,
                nextScreen: UploaderScreen.name
              ),
              20.verticalSpace,
              _buildCreateGameCard(
                  image: 'assets/images/img9.png',
                  text: 'Quiz Race',
                  bodyColor: Colors.deepPurpleAccent.shade100,
                  borderColor: Colors.deepPurpleAccent
              ),
              20.verticalSpace,
              _buildCreateGameCard(
                  image: 'assets/images/img10.png',
                  text: 'Matching Sprint',
                  bodyColor: Colors.blueGrey.shade100,
                  borderColor: Colors.blueGrey
              ),
              20.verticalSpace,
              _buildCreateGameCard(
                  image: 'assets/images/img8.png',
                  text: 'Study Guide Builder',
                  bodyColor: Colors.pink.shade100,
                  borderColor: Colors.pink
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateGameCard({image,text,bodyColor,borderColor,nextScreen}) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 2,
            spreadRadius: 5,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: bodyColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: borderColor
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(image),
                  ),
                ),
                20.horizontalSpace,
                Text(text,style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, nextScreen);
              },
              padding: EdgeInsets.zero,
              icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 18,),
            )
          ],
        ),
      ),
    );
  }
}
