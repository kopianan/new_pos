import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
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
  String? location = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        onValidateLocation: (e) {},
                        onGetLocation: (e) {},
                      );
                    },
                    builder: (context, state) {
                      return Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const PageTitle(title: "Login"),
                            const SizedBox(height: 50),
                            const Align(
                                alignment: Alignment.center,
                                child: RoundedLogo()),
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
                            BlocProvider(
                              create: (context) =>
                                  getIt<AuthCubit>()..validateLocation(),
                              child: BlocConsumer<AuthCubit, AuthState>(
                                listener: (context, state) {},
                                builder: (context, state) {
                                  return state.maybeMap(orElse: () {
                                    return Container();
                                  }, onError: (e) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, onValidateLocation: (e) {
                                    return Container(
                                        width: double.infinity,
                                        child: CustomDropdown(
                                            validator: (e) {
                                              if (e == null) {
                                                return "Pilih lokasi";
                                              }
                                              return null;
                                            },
                                            hintText: "Pilih lokasi",
                                            label: "Lokasi",
                                            onChanged: (e) {
                                              print(e);
                                            },
                                            list: e.location));
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 30),
                            PosDefaultButton(
                              text: "Login",
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
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
    );
  }
}
