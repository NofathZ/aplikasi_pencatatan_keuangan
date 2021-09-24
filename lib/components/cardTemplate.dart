import 'package:flutter/material.dart';

class CardTemplate extends StatefulWidget {
  final String title;
  const CardTemplate({required this.title});

  @override
  _CardTemplateState createState() => _CardTemplateState();
}

class _CardTemplateState extends State<CardTemplate> {
  final numberTextField = TextEditingController();

  int money = 0;

  String color = "red";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  bottom: 10,
                  top: 5,
                ),
                child: Text(
                  // numberTextField.text,
                  "Rp. ${money}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: numberTextField,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  this.money += int.parse(numberTextField.text);
                  this.numberTextField.clear();
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[300],
                onPrimary: Colors.red[300],
              ),
              child: Text("ADD"),
            ),
          ),
        ],
      ),
    );
  }
}
