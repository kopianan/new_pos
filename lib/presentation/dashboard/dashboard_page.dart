import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/list_sale/list_sale_page.dart';
import 'package:pos/presentation/menu/menu_page.dart';
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
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('POS RTL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ))),
          ListTile(
            onTap: () {
              PrefStorage()
                  .resetData()
                  .then((value) => Get.offAllNamed(MenuPage.TAG));
            },
            leading: Icon(Icons.restore_outlined),
            title: Text('Reset Data'),
          ),
          Divider(height: 0),
          ListTile(
              onTap: () async {
                PrefStorage()
                    .removeUserLogin()
                    .then((value) => Get.offAllNamed(AuthPage.TAG));
              },
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ))
        ],
      )),
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            right: -50,
            bottom: -20,
            child: SvgPicture.asset(
              'assets/icons/cashier.svg',
              color: Colors.grey,
              width: 300,
            ),
          ),
          SafeArea(
            child: BlocProvider(
              create: (context) => getIt<SaleCubit>(),
              child: BlocConsumer<SaleCubit, SaleState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    onGetAllProducts: (e) {
                      print("GET ALL PRODUCTS");
                    },
                    onGetCustomer: (e) {
                      print("GET ALL CUSTOMER");
                    },
                  );
                },
                builder: (context, state) {
                  return DashboardComponent();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardComponent extends StatelessWidget {
  DashboardComponent({
    Key? key,
  }) : super(key: key);
  final _saleController = Get.find<SaleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color(0xFF152542), boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    color: Colors.grey[300]!),
              ]),
              width: Get.size.width / 4,
              height: Get.size.width / 4,
              child: SvgPicture.asset(
                'assets/icons/ig_logo.svg',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40),
          BlocBuilder<SaleCubit, SaleState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () {
                  return MenuButton(
                      onTap: () {
                        context.read<SaleCubit>().getAllProduct();
                      },
                      text: "Sinkron Data");
                },
                isLoading: (e) {
                  return MenuButton();
                },
              );
            },
          ),
          SizedBox(height: 20),
          MenuButton(
              onTap: () {
                //setup sale
                _saleController.setupNewData();
                Get.toNamed(SalePage.TAG);
              },
              text: "Sale"),
          SizedBox(height: 20),
          MenuButton(
              onTap: () {
                Get.toNamed(ListSalePage.TAG);
              },
              text: "List Sale"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);
  final String? text;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!() ?? null;
      },
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: (text == null) ? Colors.blueGrey[300] : Colors.blueGrey,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(2, 2))
            ]),
        alignment: Alignment.center,
        child: (text == null)
            ? Center(
                child: CircularProgressIndicator(
                strokeWidth: 5,
                color: Colors.white,
              ))
            : Text(
                text!,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
