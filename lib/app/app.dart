import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_helper_app/app/app_routes.dart';

class StudyHelperApp extends StatefulWidget {
  const StudyHelperApp({super.key});

  @override
  State<StudyHelperApp> createState() => _StudyHelperAppState();
}

class _StudyHelperAppState extends State<StudyHelperApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          onGenerateRoute: AppRoutes.onGenerateRoute,
        );
      }
    );
  }
}
