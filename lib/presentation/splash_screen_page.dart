import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/dashboard/dashboard_page.dart';
import 'package:pos/presentation/menu/menu_page.dart';

import '../injectable.dart';

class SplashScreenPage extends StatefulWidget {
  static const String TAG = '/splash-screen-page';
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<AuthCubit>()..authenticateUser(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onAuthenticate: (e) {
              Get.toNamed(DashboardPage.TAG);
            },
            onError: (e) {
              Get.toNamed(MenuPage.TAG);
            },
          );
        },
        builder: (context, state) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    ));
  }
}
