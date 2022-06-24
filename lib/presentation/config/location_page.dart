import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/auth/auth_cubit.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/sale/payment_type.dart';
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
  final _box = PrefStorage();
  LocationDataModel? _selected;
  String? location = null;
  List<String> _validatedLocation = [];
  List<PaymentType> paymentType = [];
  List<PaymentTerm> paymentTerm = [];

  void checkData() {
    if (paymentType.length > 0 && paymentTerm.length > 0) {
      Get.back();
    }
  }

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
                onGetPaymentTerm: (e) {
                  print("Payment Term");
                  paymentTerm.addAll(e.paymentTermList);
                  _box.savePaymentTerm(paymentTerm);
                  checkData();
                },
                onGetPaymentType: (e) {
                  print("Payment Type");
                  paymentType.addAll(e.paymentTypeList);
                  _box.savePaymentType(paymentType);
                  checkData();
                },
                onGetLocation: (e) {
                  print("get location"); 
                  print(e);
                  _allUsers.assignAll(e.locations);
                },
              );
            },
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.linearToSrgbGamma(),
                    image: AssetImage('assets/images/bg_default.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                child: state.maybeMap(
                  orElse: () {
                    return Container();
                  },
                  onError: (e) {
                    return Center(
                      child: Column(
                        children: [
                          Text(
                              "Something Wrong\nSilahkan kembali ke halaman sebelumnya dan masuk lagi",
                              textAlign: TextAlign.center)
                        ],
                      ),
                    );
                  },
                  onLoading: (e) {
                    return LoadingIndicator(
                      loadingText: "Load Payment Term . . .",
                    );
                  },
                  onGetLocation: (e) {
                    return defaultView(context);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Column defaultView(BuildContext context) {
    return Column(
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
                create: (context) => getIt<AuthCubit>()..validateLocation(),
                child: BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      onValidateLocation: (e) {
                        _validatedLocation.assignAll(e.location);
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () {
                        return SizedBox();
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
                      _box.setSelectedLocation(location!);
                      context.read<AuthCubit>().getPaymentType();
                      context.read<AuthCubit>().getPaymentTerm();
                    },
                    child: Text(
                      "Pilih Lokasi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  LoadingIndicator({Key? key, required this.loadingText}) : super(key: key);
  String loadingText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text(
            loadingText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
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
