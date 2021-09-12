import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

class LocationPage extends StatefulWidget {
  static const String TAG = '/location-page';
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<AuthCubit>()..getLocationList(),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(orElse: () {
                return Container();
              }, onError: (e) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, onGetLocation: (e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PageTitle(title: "Choose Location"),
                      const SizedBox(height: 30),
                      Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Divider(thickness: 1),
                              Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: e.locations
                                      .map((val) => LocationListItem(
                                            location: val,
                                            onTap: () async {
                                              try {
                                                await PrefStorage()
                                                    .setBaseLocation(val);
                                                Get.back(closeOverlays: true);
                                                showDefaultSnackbar(context,
                                                    message:
                                                        "Berhasil menyimpan lokasi, silahkan login");
                                              } catch (e) {
                                                showDefaultSnackbar(context,
                                                    message: e.toString());
                                              }
                                            },
                                          ))
                                      .toList()),
                            ],
                          )),
                    ],
                  ),
                );
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
