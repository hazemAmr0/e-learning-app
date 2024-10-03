import 'package:e_learning/core/routing/app_router.dart';
import 'package:e_learning/core/routing/route_names.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,

      designSize:  Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
        ),
      
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.Home,
        
        /////    for testing the screens   //
        ///initialRoute: Routes.courseOverview,
        ///initialRoute: Routes.signUp,
        ///initialRoute: Routes.course,
        ///initialRoute: Routes.splash,
        ///initialRoute: Routes.savedList,
        ///initialRoute: Routes.saveEmpty,
        ///initialRoute: Routes.onboarding,
        ///initialRoute: Routes.lessonVideo,
        // initialRoute: Routes.saveEmpty,
        //initialRoute: Routes.navbar,
        //initialRoute: Routes.comments,
        //initialRoute: Routes.courseDetails,
        //initialRoute: Routes.login,
      ),
    );
  }
}
