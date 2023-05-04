import 'package:flutter/material.dart';
import 'tab_1.dart';
import 'tab_2.dart';
import 'tab_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 28, 36),
          appBar: AppBar(
            leading: Row(
              children: [
                SizedBox(width: 8),
                Text(
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                  style: TextStyle(fontSize: 18, overflow: TextOverflow.clip),
                ),
              ],
            ),
            title: Text("Smart Home"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade900, Colors.blue.shade900],
                ),
              ),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: "AC",
              ),
              Tab(
                text: "Lampu",
              ),
              Tab(
                text: "lainnya",
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Tab1(),
              Tab2(),
              Tab3(),
            ],
          ),
        ),
      ),
    );
  }
}
