import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/widgets/custom_text_field.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

class ConfigPaymentIdPage extends StatefulWidget {
  static String TAG = '/config-payment-id-page';
  const ConfigPaymentIdPage({Key? key}) : super(key: key);

  @override
  _ConfigPaymentIdPageState createState() => _ConfigPaymentIdPageState();
}

class _ConfigPaymentIdPageState extends State<ConfigPaymentIdPage> {
  final _payment = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    try {
      var _data = storage.getPaymentTerm();
      _payment.text = _data.code!;
    } catch (e) {}

    super.initState();
  }

  PrefStorage storage = PrefStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: PageTitle(title: "PAYMENT TERM"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      validator: (e) {
                        if (e!.isEmpty) {
                          return "Harap isi ID";
                        }
                        return null;
                      },
                      controller: _payment,
                      hintText: "Payment Term CASH ID",
                      label: "Payment Term",
                    ),
                    Text("Harap cek lagi id yang dimasukkan"),
                    SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            if (_payment.text == "") {
                              Get.showSnackbar(
                                GetBar(
                                  message: "Harap memasukkan ID",
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            } else {
                              var _data = PaymentTerm(
                                  code: _payment.text, name: "CASH");
                              await storage.savePaymentTerm(_data);
                              Get.back(); 
                            }
                          }
                        },
                        child: Text("Simpan"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
