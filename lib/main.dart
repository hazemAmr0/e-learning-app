
import 'package:e_learning/core/routing/app_router.dart';
import 'package:e_learning/core/routing/route_names.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       useMaterial3: false,
     ),
   
   onGenerateRoute: appRouter.generateRoute,
    initialRoute: Routes.navbar,
   
    
    );
  }
}



                       
