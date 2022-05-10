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
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.green,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.green,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.green,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                      ),
                      Container(
                        color: Colors.green,
                        height: 200,
                        width: 200,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: 200,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 200,
              ),
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: 200,
              ),
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
