import '/features/auth/presentation/views/forget_password_view.dart';
import '/features/auth/presentation/views/login_view.dart';
import '/features/auth/presentation/views/signup_view.dart';
import '/features/onboarding/presentation/views/onboarding_view.dart';
import 'routers_names.dart';

abstract class AppRouter {
  static final router = {
    RouterNames.rOnboardingView: (context) => const OnBoardingView(),
    RouterNames.rLoginView: (context) => const LoginView(),
    RouterNames.rSignUpView: (context) => const SignUpView(),
    RouterNames.rForgetPasswordView: (context) => const ForgetPasswordView(),
  };
}
