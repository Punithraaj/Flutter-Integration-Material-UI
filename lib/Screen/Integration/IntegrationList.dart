import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/BarcodeScanner/BarcodeScreen.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/BarcodeScanner/Page/QR_Create_Page.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/Language_Integration/LanguageScreen.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/PDF_Viewer/PDF_Main_Screen.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/Signature/SignaturePage.dart';

class IntegrationList extends StatefulWidget {
  IntegrationList({Key key}) : super(key: key);

  @override
  _IntegrationListState createState() => _IntegrationListState();
}

class _IntegrationListState extends State<IntegrationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Integration",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w700),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => BarCodeScreen()));
                },
                child: card("Create Barcode Code", Color(0xFFFFC074),
                    Icons.qr_code_outlined)),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LanguageScreen()));
                },
                child: card("Change Language", Color(0xFFF6C6EA),
                    Icons.language_outlined)),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PDFScreen()));
                },
                child: card("PDF Viewer", Color(0xFF5F939A), Icons.pageview)),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => SignaturePage()));
                },
                child: card(
                    "Signature", Color(0xFFE99497), CupertinoIcons.signature)),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
                child: Icon(
              icon,
              size: 45.0,
              color: Colors.white,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
