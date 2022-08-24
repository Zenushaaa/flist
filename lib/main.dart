import 'package:flist/Pages/forgot_password_page.dart';
import 'package:flist/Pages/login_page.dart';
import 'package:flist/Pages/popular_page.dart';
import 'package:flist/Pages/popular_playlist_page.dart';
import 'package:flist/Pages/register_page.dart';
import 'package:flist/Pages/splash_page.dart';
import 'package:flist/provider/movie_provider.dart';
import 'package:flist/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MovieProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Splashpage(),
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/forgotPassword': (context) => const ForgotPasssword(),
          '/main': (context) => const BottomNav(),
          '/popular': (context) => const Popularpage(),
          '/popularPlaylist': (context) => const PopularPlaylist(),
        },
      ),
    );
  }
}
