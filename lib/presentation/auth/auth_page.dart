import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/dashboard/dashboard_page.dart';
import 'package:pos/presentation/widgets/custom_dropdown.dart';
import 'package:pos/presentation/widgets/custom_text_field.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

import '../../injectable.dart';

class AuthPage extends StatefulWidget {
  static const String TAG = '/auth_page';
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  LocationDataModel? _selected;
  bool? isPassword = true;
  String? location = null;
  List<String> _validatedLocation = [];
  List<LocationDataModel> _allUsers = <LocationDataModel>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.linearToSrgbGamma(),
            image: AssetImage('assets/images/bg_default.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  BlocProvider(
                    create: (context) => getIt<AuthCubit>()..getLocationList(),
                    child: BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        state.maybeMap(
                          orElse: () {},
                          onGetLocation: (e) {
                            _allUsers.assignAll(e.locations);
                          },
                        );
                      },
                      builder: (context, state) {
                        return Form(
                          key: _formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/bg_machine.png',
                                      width: Get.size.width / 1.7,
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      PrefStorage().getStoreName(),
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 25),
                              CustomTextField(
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "Harap isi username";
                                  }
                                  return null;
                                },
                                controller: _usernameController,
                                hintText: "Your username",
                                label: "Username",
                              ),
                              const SizedBox(height: 20),
                              CustomTextField(
                                isPassword: isPassword,
                                suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isPassword = !isPassword!;
                                      });
                                    },
                                    child: (!isPassword!)
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility)),
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "Harap isi password";
                                  }
                                  return null;
                                },
                                controller: _passwordController,
                                hintText: "Your password",
                                label: "Password",
                              ),
                              const SizedBox(height: 20),
                              PosDefaultButton(
                                text: "Login",
                                onPressed: () {
                                  onLoginButtonClicked();
                                },
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onLoginButtonClicked() {
    if (_formKey.currentState!.validate()) {
      final _user = _usernameController.text;
      final _pass = _passwordController.text;
      location = PrefStorage().getSelectedLocation();

      try {
        final _data =
            _allUsers.firstWhere((element) => element.userName == _user);

        if (_data.passwordValue != _pass) {
          showDefaultSnackbar(context, message: "Password salah");
        } else {
          //cek location

          if (_data.locationCode!.toLowerCase() == location!.toLowerCase()) {
            //Terdaftar
            PrefStorage().setUserLogin(_data);
            Get.toNamed(DashboardPage.TAG);
          } else {
            showDefaultSnackbar(context, message: "Lokasi tidak ditemukan");
          }
        }
      } catch (e) {
        showDefaultSnackbar(context, message: "User tidak ditemukan ");
      }
    }
  }
}
