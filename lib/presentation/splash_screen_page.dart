import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:new_version/new_version.dart';
import 'package:pos/application/auth/auth_cubit.dart';
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
  void initState() {
    super.initState();

    final newVersion = NewVersion(
      iOSId: 'com.roomart.rtlpos',
      androidId: 'com.roomart.rtlpos',
    );

    basicStatusCheck(newVersion);
  }

  basicStatusCheck(NewVersion newVersion) {
    newVersion.getVersionStatus().then((value) => print(value!.storeVersion));
    newVersion.showAlertIfNecessary(context: context);
  }

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
              Get.offAllNamed(DashboardPage.TAG);
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
