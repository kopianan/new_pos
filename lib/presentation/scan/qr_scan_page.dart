import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanPage extends StatefulWidget {
  static const String TAG = '/qr-scan-page';
  const QrScanPage({Key? key}) : super(key: key);

  @override
  _QrScanPageState createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen(
      (scanData) async {
        print(scanData);
        result = scanData;
        await controller.pauseCamera();

        Get.back(result: result!.code, closeOverlays: true);
      },
      onDone: () {
        print("DONE");
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Scan"),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            color: Colors.black.withAlpha(100),
            child: Text("Scanning QR / Barcode. . .",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
