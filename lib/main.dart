import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits/core/helper_functions/on_generate_route.dart';
import 'package:fruits/core/services/custom_bloc_observer.dart';
import 'package:fruits/core/services/shared_preferences_singletone.dart';
import 'package:fruits/core/utils/app_colors.dart';
import 'package:fruits/features/splash/presentation/ui/splash_view.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/services/service_locator.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      title: 'FruitsHub',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
