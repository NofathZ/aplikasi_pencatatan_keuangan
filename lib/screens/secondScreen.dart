import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_pencatatan_keuangan/components/cardTemplate.dart';

class SecondScreen extends StatefulWidget {

  final String cardType;
  const SecondScreen({required this.cardType});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CardTemplate(title: widget.cardType),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
