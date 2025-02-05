import 'package:dukaan/feature/home_screen/ui/screen/home_screen.dart';
import 'package:dukaan/feature/login/ui/screen/add_phone_number.dart';
import 'package:go_router/go_router.dart';


final GoRouter routerApp = GoRouter(
  routes: [
  
     GoRoute(
      path: '/',
      builder: (context, state) => AddPhoneNumber(),
    ),
     GoRoute(
      path: '/HomeScreen',
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
