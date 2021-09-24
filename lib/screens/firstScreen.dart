import 'package:aplikasi_pencatatan_keuangan/screens/secondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.fastfood,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SecondScreen(cardType: "Makanan");
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.directions_car,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SecondScreen(cardType: "Transportasi");
                              },
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.work_outlined,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SecondScreen(cardType: "Pekerjaan");
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SecondScreen(cardType: "Lain-lain");
                              },
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
