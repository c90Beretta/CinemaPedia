


import 'package:ecosistemacopy/presentation/screens/mainscreen.dart';
import 'package:go_router/go_router.dart';

final approuter = GoRouter(
  initialLocation: "/mainscreen",
  routes: [
    GoRoute(path: "/mainscreen",
    builder: (context, state) => const MainMenuScreen(),)
  ]
);