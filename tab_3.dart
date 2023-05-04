import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  bool statusSwitch1 = false;
  bool statusSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Container(
            width: 250,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Colors.green.shade900, Colors.blue.shade900],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Switch 1',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Switch(
                  value: statusSwitch1,
                  onChanged: (value) {
                    setState(() {
                      statusSwitch1 = value;
                    });
                    print(statusSwitch1);
                  },
                ),
                SizedBox(height: 20),
                Text(
                  statusSwitch1 ? "On" : "Off",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: 250,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Colors.green.shade900, Colors.blue.shade900],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Switch 2',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Switch(
                  value: statusSwitch2,
                  onChanged: (value) {
                    setState(() {
                      statusSwitch2 = value;
                    });
                    print(statusSwitch2);
                  },
                ),
                SizedBox(height: 20),
                Text(
                  statusSwitch2 ? "On" : "Off",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
