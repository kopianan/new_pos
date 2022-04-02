import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:new_version/new_version.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/infrastructure/storage/storage.dart';
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
  final _password = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String storeName = "";
  @override
  void initState() {
    storeName = PrefStorage().getStoreName();
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
        key: _scaffoldKey,
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Text(
                  "Lihat transaksi",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Icon(Icons.arrow_right_alt_rounded, color: Colors.green),
              ],
            ),
            IconButton(
              onPressed: () {
                Get.toNamed(ListSalePage.TAG);
              },
              icon: Icon(Icons.list_alt),
            )
          ],
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(storeName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ))),
            ListTile(
              onTap: () {
                Get.dialog(SimpleDialog(
                  title: Text(
                    "Input Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  titlePadding: EdgeInsets.all(20),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    Text(
                        "Silahkan masukkan password untuk melakukan reset data"),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          var _user = PrefStorage().getUserLogin();

                          if (_password.text == _user.passwordValue!) {
                            PrefStorage()
                                .resetData()
                                .then((value) => Get.offAllNamed(MenuPage.TAG));
                          } else {
                            Get.showSnackbar(
                              GetBar(
                                message: "Password tidak cocok",
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        child: Text("LogOut")),
                    SizedBox(height: 20),
                  ],
                ));
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
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.linearToSrgbGamma(),
                    image: AssetImage(
                      'assets/images/bg_default.png',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Image.asset('assets/images/bg_atm.png',
                          fit: BoxFit.contain),
                    ),
                  ),
                  Container(
                    height: Get.size.height / 2 - 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xFF152542),
                                boxShadow: [
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
                        SizedBox(height: 20),
                        Text(
                          storeName,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: double.infinity,
                          child: MaterialButton(
                            height: 50,
                            onPressed: () {
                              _saleController.setupNewData();
                              Get.toNamed(SalePage.TAG);
                            },
                            color: Colors.blue,
                            child: Text(
                              "BUAT TRANSAKSI",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
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
          // BlocBuilder<SaleCubit, SaleState>(
          //   builder: (context, state) {
          //     return state.maybeMap(
          //       orElse: () {
          //         return MenuButton(
          //             onTap: () {
          //               context.read<SaleCubit>().getAllProduct();
          //             },
          //             text: "Sinkron Data");
          //       },
          //       isLoading: (e) {
          //         return MenuButton();
          //       },
          //     );
          //   },
          // ),
          // SizedBox(height: 20),

          MenuButton(
              onTap: () {
                Get.toNamed(ListSalePage.TAG);
              },
              text: "List Sale"),
          SizedBox(height: 20),
          Spacer(),
          MenuButton(
              onTap: () {
                //setup sale
                _saleController.setupNewData();
                Get.toNamed(SalePage.TAG);
              },
              text: "Buat Transaksi"),
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
