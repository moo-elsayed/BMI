import 'package:bmi/core/routing/routes.dart';
import 'package:bmi/models/bmi_model.dart';
import 'package:bmi/views/home_view.dart';
import 'package:bmi/views/result_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeView:
        return CupertinoPageRoute(builder: (context) => const HomeView());
      case Routes.resultView:
        var args = arguments as BmiModel;
        return CupertinoPageRoute(
          builder: (context) => ResultView(bmiModel: args),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for this ${settings.name}'),
            ),
          ),
        );
    }
  }
}
