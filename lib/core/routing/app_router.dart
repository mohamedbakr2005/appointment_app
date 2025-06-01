import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/fillProfileUser/ui/screens/fill_profile_screen.dart';
import 'package:appointment_app/features/forgotPasswordandFillProfile/ui/screens/forgot_password_screen.dart';
import 'package:appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/ui/screens/login_screen.dart';
import 'package:appointment_app/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:appointment_app/features/signUp/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getit<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case Routes.fillProfile:
        return MaterialPageRoute(builder: (_) => const FillProfileScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                appBar: AppBar(title: const Text('Unknown Route')),
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
