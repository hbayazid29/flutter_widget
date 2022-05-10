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
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            ListTile(
              minLeadingWidth: 12,
              onTap: () {
                print('This item is clicked');
              },
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color.fromARGB(255, 85, 255, 6), width: 2),
                  borderRadius: BorderRadius.circular(20)),
              tileColor: Colors.amberAccent,
              leading: Icon(Icons.person),
              title: Text(
                "Mr Joy",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Flutter Application Developer",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              minLeadingWidth: 12,
              onTap: () {
                print('This item is clicked');
              },
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color.fromARGB(255, 85, 255, 6), width: 2),
                  borderRadius: BorderRadius.circular(20)),
              tileColor: Colors.amberAccent,
              leading: Icon(Icons.person),
              title: Text(
                "Mr Joy",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Flutter Application Developer",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              minLeadingWidth: 12,
              onTap: () {
                print('This item is clicked');
              },
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color.fromARGB(255, 85, 255, 6), width: 2),
                  borderRadius: BorderRadius.circular(20)),
              tileColor: Colors.amberAccent,
              leading: Icon(Icons.person),
              title: Text(
                "Mr Joy",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Flutter Application Developer",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
