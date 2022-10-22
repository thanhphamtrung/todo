import 'package:get/get.dart';
import 'package:todo/src/features/detail/presentation/views/detail_screen.dart';
import 'package:todo/src/features/home/bindings/home_binding.dart';
import 'package:todo/src/features/home/presentation/views/home_screen.dart';
import 'package:todo/src/features/login/presentation/views/forgot_password_screen.dart';
import 'package:todo/src/features/login/presentation/views/login_screen.dart';
import 'package:todo/src/features/login/presentation/views/register_screen.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      // binding: Login(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScreen(),
      // binding: Login(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      // binding: Login(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => const DetailScreen(),
      // binding: HomeBinding(),
    ),
  ];
}
