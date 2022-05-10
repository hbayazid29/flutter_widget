import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink,
              )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.deepOrange,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
              ))
        ],
      ),
    );
  }
}
