import 'package:droop_down/screen/home_screen.dart';
import 'package:droop_down/screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          title: "Group Project",
          theme: ThemeData(useMaterial3: false),
          home: child,
        );
      },
      child:  UserScreen(),
    );
  }
}
