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
  Color c = const Color(0xFF42A5F5);
  Color y = Color.fromARGB(255, 255, 252, 48);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.scanner),
          elevation: 5,
          centerTitle: true,
          backgroundColor: c,
          title: Text(
            "Container WIdget",
            style: TextStyle(letterSpacing: 2),
          )),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('This is Ontap');
          },
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border:
                    Border.all(color: Color.fromARGB(255, 209, 0, 0), width: 2),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 60,
                    color: Color.fromARGB(255, 7, 201, 255),
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Register'),
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 199, 255, 101),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(90),
                          bottomRight: Radius.circular(250))),
                ),
                Icon(Icons.home),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
