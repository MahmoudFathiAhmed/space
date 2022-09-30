import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_strings.dart';
import 'package:space_project/presentation/screens/article_screen.dart';
import 'package:space_project/presentation/screens/articles_screen.dart';
import 'package:space_project/presentation/screens/main_screen.dart';
import 'package:space_project/presentation/components/video_player/MyVideoPlayer.dart';
import 'package:space_project/presentation/screens/media/test_screen.dart';
import 'package:space_project/presentation/screens/news_screen.dart';
import 'package:space_project/presentation/screens/search_screen.dart';
import 'package:space_project/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = AppStrings.initialRoute;
  static const String mainRoute = AppStrings.mainRoute;
  static const String articlesRoute = AppStrings.articlesRoute;
  static const String articleRoute = AppStrings.articleRoute;
  static const String newsRoute = AppStrings.newsRoute;
  static const String searchRoute = AppStrings.searchRoute;
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        // return MaterialPageRoute(builder: (context)=>const ArticlesScreen());
        // return MaterialPageRoute(builder: (context) => const MainScreen());
        return MaterialPageRoute(builder: (context)=>const SplashScreen());
        // return MaterialPageRoute(builder: (context)=> TextToSpeechScreen(text: 'mahmoud'));
        // return MaterialPageRoute(builder: (context) => NewsScreen());
        // return MaterialPageRoute(builder: (context) => SearchScreen());
      // return MaterialPageRoute(builder: (context) => const TestScreen());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case Routes.articlesRoute:
        return MaterialPageRoute(builder: (context)=>const ArticlesScreen());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (context)=> SearchScreen());
      // case Routes.articleRoute:
      //   return MaterialPageRoute(builder: (context)=>const ArticleScreen());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text(
                  AppStrings.noRouteFound,
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ));
  }
}
