import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  int value = 0;
  bool statusSwitch1 = false;
  bool statusSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.ac_unit, size: 150, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                child: Icon(Icons.add),
              ),
              SizedBox(width: 16),
              Text(
                '$value',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value--;
                  });
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
