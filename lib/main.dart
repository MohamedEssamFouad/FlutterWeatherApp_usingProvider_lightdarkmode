
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'PostProvider.dart';
import 'home.dart';

void main() {
  runApp(

      ChangeNotifierProvider(create: (context)=>PostProvider(),child: MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: Provider.of<PostProvider>(context).themeData,
          home: const Home(),
        );
      },
    );
  }
}
