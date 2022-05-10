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
      body: Stack(
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Text(
                    'I like this Nature',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Text(
                  'Very Beutiful ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    ActionChip(label: Text('Beautiful'), onPressed: () {}),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(label: Text('Nature'), onPressed: () {}),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
