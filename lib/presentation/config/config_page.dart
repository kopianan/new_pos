import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/widgets/custom_text_field.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

class ConfigPage extends StatefulWidget {
  static const String TAG = '/config_page';
  const ConfigPage({Key? key}) : super(key: key);

  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  String selectedTType = "SO";
  bool editable = false;
  bool multiUnit = false;
  final _url =
      TextEditingController(text: 'http://vipcloud.erp.web.id:8081/store/');
  final _imageUrl =
      TextEditingController(text: 'http://vipcloud.erp.web.id:8081');
  final _storeName = TextEditingController(text: "POS");
  final _formKey = GlobalKey<FormState>();

  void selectTransactionType(String value) {
    setState(() {
      selectedTType = value;
    });
  }

  void selectEditable(bool value) {
    setState(() {
      editable = value;
    });
  }
  void selectMultiUnit(bool value) {
    setState(() {
      multiUnit = value;
    });
  }

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, size: 30),
                onPressed: () {
                  Get.back(closeOverlays: true);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PageTitle(title: "Configuration"),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RoundedLogo(),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Form(
                          key: _formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              CustomTextField(
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "URL tidak boleh kosong";
                                  }
                                  return null;
                                },
                                hintText: "Insert url config",
                                controller: _url,
                                label: "URL",
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                    "example : http://[nama_domain]:port/[nama_aplikasi]/"),
                              ),
                              SizedBox(height: 20),
                              CustomTextField(
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "URL tidak boleh kosong";
                                  }
                                  return null;
                                },
                                hintText: "Base Image Url",
                                controller: _imageUrl,
                                label: "URL",
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child:
                                    Text("example : http://[nama_domain]:port"),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            CustomTextField(
                              validator: (e) {
                                if (e!.isEmpty) {
                                  return "Nama toko tidak boleh kosong";
                                }
                                return null;
                              },
                              hintText: "Input nama toko",
                              controller: _storeName,
                              label: "Store",
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Transaction Type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 7),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.zero,
                          child: Column(
                            children: [
                              RadioListTile<String>(
                                title: const Text("SO"),
                                value: 'SO',
                                groupValue: selectedTType,
                                onChanged: (e) {
                                  selectTransactionType(e!);
                                },
                              ),
                              const Divider(height: 0),
                              RadioListTile<String>(
                                title: const Text("SI"),
                                value: 'SI',
                                groupValue: selectedTType,
                                onChanged: (e) {
                                  selectTransactionType(e!);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Editable Price & Discount",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 7),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.zero,
                          child: Column(
                            children: [
                              RadioListTile<bool>(
                                title: const Text("Editable"),
                                value: true,
                                groupValue: editable,
                                onChanged: (e) {
                                  selectEditable(e!);
                                },
                              ),
                              const Divider(height: 0),
                              RadioListTile<bool>(
                                title: const Text("NOT Editable"),
                                value: false,
                                groupValue: editable,
                                onChanged: (e) {
                                  selectEditable(e!);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Multiunit",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 7),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.zero,
                          child: Column(
                            children: [
                              RadioListTile<bool>(
                                title: const Text("Single Unit"),
                                value: true,
                                groupValue: multiUnit,
                                onChanged: (e) {
                                  selectMultiUnit(e!);
                                },
                              ),
                              const Divider(height: 0),
                              RadioListTile<bool>(
                                title: const Text("Multi Unit"),
                                value: false,
                                groupValue: multiUnit,
                                onChanged: (e) {
                                  selectMultiUnit(e!);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    PosDefaultButton(
                      text: "Save",
                      onPressed: () async {
                        PrefStorage _storage = PrefStorage();
                        _formKey.currentState!.save();
                        if (_formKey.currentState!.validate()) {
                          //set Data To Storage
                          try {
                            await _storage
                                .setImageBaseUrl(_imageUrl.text.trim());
                            await _storage.setBaseUrl(_url.text.trim());
                            await _storage.setTransactionType(selectedTType);
                            await _storage.saveStoreName(_storeName.text);
                            await _storage.setEditable(editable);
                            await _storage.setMultiUnit(editable);
                            Get.back(closeOverlays: true);
                            await showDefaultSnackbar(context,
                                message: "Berhasil menyimpan config");
                          } catch (e) {
                            showDefaultSnackbar(context, message: e.toString());
                          }
                        } else {
                          showDefaultSnackbar(context,
                              message: "Silahkan isi field");
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
