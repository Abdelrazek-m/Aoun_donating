import 'package:aoun_donating/features/auth/presentation/views/login_view.dart';
import 'package:aoun_donating/features/auth/presentation/views/signup_view.dart';
import 'package:aoun_donating/features/onboarding/presentation/views/onboarding_view.dart';
import 'routers_names.dart';

abstract class AppRouter {
  static final router = {
    RouterNames.rOnboardingView: (context) => const OnBoardingView(),
    RouterNames.rLoginView: (context) => LoginView(),
    RouterNames.rSignUpView: (context) => SignUpView(),
  };
}
