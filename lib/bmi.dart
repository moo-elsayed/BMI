import 'package:bmi/core/routing/app_router.dart';
import 'package:bmi/core/routing/routes.dart';
import 'package:bmi/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMI extends StatelessWidget {
  const BMI({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManager.backgroundColor,
          appBarTheme: const AppBarTheme(backgroundColor: ColorsManager.appBarColor),
        ),
        initialRoute: Routes.homeView,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
