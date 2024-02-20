import 'package:aoun_donating/core/constants/colors.dart';
import 'package:aoun_donating/core/routes/app_router.dart';
import 'package:aoun_donating/features/auth/presentation/views/select_method.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';


// import 'package:firebase_core/firebase_core.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const AounApp());
  
}

class AounApp extends StatelessWidget {
  const AounApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () => FlutterNativeSplash.remove(),);
    return  MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ar', ''), // Arabic
      ],
      theme: ThemeData(fontFamily: 'Cairo',primaryColor: MyColors.cPrimaryColor),
      routes: AppRouter.router,
      // the fowlloing code for make onboarding pages open ones only
      home: FutureBuilder(
        future: checkFirstSeen(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator()); // Or any loading indicator
          } else {
            return snapshot.data == true ? const SelectMethodView() : const OnBoardingView();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

  Future<bool> checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = prefs.getBool('seen') ?? false;


    return seen;
  }
