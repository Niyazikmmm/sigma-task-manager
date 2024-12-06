import 'package:auth_example_85110/feature/auth/page/login_pages.dart';
import 'package:auth_example_85110/feature/auth/page/register_page.dart';
import 'package:auth_example_85110/feature/settings/settings_page.dart';
import 'package:auth_example_85110/feature/task/page/task_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: LoginPage.route,
    routes: [
      GoRoute(
        path: LoginPage.route,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RegisterPage.route,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: TasksPage.route,
        builder: (context, state) => const TasksPage(),
      ),
      GoRoute(
        path: SettingsPage.route,
        builder: (context, state) => SettingsPage(),
      )
    ],
  );
}