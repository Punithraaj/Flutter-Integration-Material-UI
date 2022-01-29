// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, annotate_overrides, camel_case_types, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/BarcodeScanner/Page/QR_Code_Scanner_Screen.dart';
import 'package:flutter_integration_material_ui/Screen/Integration/BarcodeScanner/Page/QR_Create_Page.dart';

class BarCodeScreen extends StatefulWidget {
  BarCodeScreen({Key key}) : super(key: key);

  _BarCodeScreenState createState() => _BarCodeScreenState();
}

class _BarCodeScreenState extends State<BarCodeScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[QrCodeScanner(), QRCreatePage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF313131),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              title: Text(
                'Scan Qr code',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              title: Text(
                'Create Qr Code',
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0XFF5fa693),
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
