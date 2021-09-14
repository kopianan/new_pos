import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/sale/sale_page.dart';

class DashboardPage extends StatefulWidget {
  static const String TAG = '/dashboard-page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _saleController = Get.find<SaleController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<SaleCubit>(),
          child: BlocConsumer<SaleCubit, SaleState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                onGetAllProducts: (e) {
                  _saleController.setProductList(e.list);
                },
              );
            },
            builder: (context, state) {
              return DashboardComponent();
            },
          ),
        ),
      ),
    );
  }
}

class DashboardComponent extends StatelessWidget {
  const DashboardComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.yellow,
          title: Text("Update All Data"),
          onTap: () {
            context.read<SaleCubit>().getAllProduct();
          },
        ),
        ListTile(
          tileColor: Colors.blue,
          title: Text("Sales"),
          onTap: () {
            Get.toNamed(SalePage.TAG);
          },
        )
      ],
    );
  }
}
