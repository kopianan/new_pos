import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/widgets/custom_dropdown.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

class LocationPage extends StatefulWidget {
  static const String TAG = '/location-page';
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  List<LocationDataModel> _allUsers = <LocationDataModel>[];

  LocationDataModel? _selected;
  String? location = null;
  List<String> _validatedLocation = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
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
              return state.maybeMap(orElse: () {
                return Container();
              }, onError: (e) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, onGetLocation: (e) {
                return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.linearToSrgbGamma(),
                        image: AssetImage('assets/images/bg_default.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PageTitle(title: "Pilih Lokasi"),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              BlocProvider(
                                create: (context) =>
                                    getIt<AuthCubit>()..validateLocation(),
                                child: BlocConsumer<AuthCubit, AuthState>(
                                  listener: (context, state) {
                                    state.maybeMap(
                                      orElse: () {},
                                      onValidateLocation: (e) {
                                        _validatedLocation
                                            .assignAll(e.location);
                                      },
                                    );
                                  },
                                  builder: (context, state) {
                                    return state.maybeMap(
                                      orElse: () {
                                        return Container();
                                      },
                                      onLoading: (e) {
                                        return const CustomDropdownLoading(
                                          label: "Pilih Lokasi",
                                        );
                                      },
                                      onError: (e) {
                                        return const CustomDropdownLoading(
                                          label: "Atur Config Dulu",
                                        );
                                      },
                                      onValidateLocation: (e) {
                                        return SizedBox(
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
                                              location = e;
                                            },
                                            list: e.location,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                height: 43,
                                child: ElevatedButton(
                                    onPressed: () {
                                      PrefStorage()
                                          .setSelectedLocation(location!)
                                          .then((value) => Get.back());
                                    },
                                    child: Text(
                                      "Pilih Lokasi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                        ),
                      ],
                    ));

                // return Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       const PageTitle(title: "Choose Location"),
                //       const SizedBox(height: 30),
                //       Card(
                //           elevation: 6,
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(10)),
                //           child: Column(
                //             children: [
                //               const Divider(thickness: 1),
                //               Column(
                //                   mainAxisSize: MainAxisSize.min,
                //                   children: e.locations
                //                       .map((val) => LocationListItem(
                //                             location: val,
                //                             onTap: () async {
                //                               try {
                //                                 Get.back(closeOverlays: true);
                //                                 showDefaultSnackbar(context,
                //                                     message:
                //                                         "Berhasil menyimpan lokasi, silahkan login");
                //                               } catch (e) {
                //                                 showDefaultSnackbar(context,
                //                                     message: e.toString());
                //                               }
                //                             },
                //                           ))
                //                       .toList()),
                //             ],
                //           )),
                //     ],
                //   ),
                // );
              });
            },
          ),
        ),
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  const LocationListItem({
    Key? key,
    required this.location,
    required this.onTap,
  }) : super(key: key);
  final Function onTap;
  final LocationDataModel location;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () {
            onTap();
          },
          title: Text(location.locationCode!),
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
