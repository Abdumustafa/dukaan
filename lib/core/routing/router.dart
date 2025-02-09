import 'package:dukaan/feature/add_email_and_password/ui/screen/add_username_and_password.dart';
import 'package:dukaan/feature/category/ui/screen/category_screen.dart';
import 'package:dukaan/feature/favorites/ui/screen/favorites_screen.dart';
import 'package:dukaan/feature/home/ui/screen/home_screen.dart';
import 'package:dukaan/feature/login/ui/screen/add_phone_number.dart';
import 'package:dukaan/feature/my_card/ui/screen/my_cart_screen.dart';
import 'package:dukaan/feature/product/ui/screen/products_screen.dart';
import 'package:dukaan/feature/product_details/ui/screen/product_details_screen.dart';
import 'package:dukaan/feature/verify_phone/ui/screen/verify_phone_screen.dart';
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
    GoRoute(
      path: '/VerifyPhoneScreen',
      builder: (context, state) => VerifyPhoneScreen(),
    ),
    GoRoute(
      path: '/AddUserNameAndPassword',
      builder: (context, state) => AddUserNameAndPassword(),
    ),
    GoRoute(
      path: '/MyCartScreen',
      builder: (context, state) => MyCartScreen(),
    ),
     GoRoute(
      path: '/FavoritesScreen',
      builder: (context, state) => FavoritesScreen(),
    ),
     GoRoute(
      path: '/CategoryScreen',
      builder: (context, state) => CategoryScreen(),
    ),
    GoRoute(
      path: '/SnacksScreen',
      builder: (context, state) => SnacksScreen(),
    ),
     GoRoute(
      path: '/ProductDetailsScreen',
      builder: (context, state) => ProductDetailsScreen(),
    ),
  ],
);
