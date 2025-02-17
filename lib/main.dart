import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:intelli_health/core/app_exports.dart';
import 'package:intelli_health/core/constants/enums.dart';
import 'package:intelli_health/helper/local_string.dart';
import 'package:intelli_health/presentation/pages/auth/sign_in_screen.dart';
import 'package:intelli_health/presentation/pages/home/home.dart';
import 'package:intelli_health/presentation/pages/onboarding/onboading.dart';
import 'package:intelli_health/repository/auth_repo/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    print("Error loading .env file: $e");
  }

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  ).then(
    (_) {
      runApp(const MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<Widget> _getInitialScreen() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isAuthenticated =
        prefs.getBool(AuthState.authenticated.toString()) ?? false;

    if (isAuthenticated) {
      return const Home();
    } else {
      final bool isNewUser =
          prefs.getBool(AuthState.unknown.toString()) ?? true;

      if (isNewUser) {
        return const OnBoardingScreen();
      } else {
        return SignInScreen();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuTheme(
      data: PopupMenuThemeData(
        textStyle: TextStyle(
          color: ColorConstant.bluedark,
        ),
        color: ColorConstant.whiteBackground,
      ),
      child: RepositoryProvider(
        create: (context) => AuthRepository(),
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          locale: Get.deviceLocale,
          translations: LocalString(),
          title: 'intelli_health-app',
          theme: ThemeData(
            primaryColor: Colors.white,
          ),
          initialRoute: "/",
          getPages: [
            GetPage(
              name: "/",
              page: () => FutureBuilder<Widget>(
                  future: _getInitialScreen(),
                  builder:
                      (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                    if (snapshot.hasData) {
                      return snapshot.data!;
                    } else {
                      // For showing splash screen during loading
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
            AppRoutes.homePage,
            AppRoutes.onBoardingPage,
            AppRoutes.signInPage,
            AppRoutes.signUpPage,
            AppRoutes.userDetailsPage,
            AppRoutes.stokeEmergencyPage,
            AppRoutes.healthCornerPage,
          ],
        ),
      ),
    );
  }
}
