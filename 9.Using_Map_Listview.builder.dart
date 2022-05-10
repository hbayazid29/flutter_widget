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
  final contat_list = [
    {'name': 'Pranto', 'phone': '01738787829', 'email': 'bayu@gmail.com'},
    {'name': 'Aiub', 'phone': '01858787829', 'email': 'bayu@gmail.com'},
    {'name': 'Nahid', 'phone': '01968787829', 'email': 'bayu@gmail.com'},
    {'name': 'Shakil', 'phone': '01888787829', 'email': 'bayu@gmail.com'},
    {'name': 'Sajedul', 'phone': '010458787829', 'email': 'bayu@gmail.com'},
    {'name': 'Faruk', 'phone': '0188787829', 'email': 'bayu@gmail.com'},
    {'name': 'Fatema', 'phone': '01458787829', 'email': 'bayu@gmail.com'},
    {'name': 'Joni', 'phone': '01888787829', 'email': 'bayu@gmail.com'},
    {'name': 'Azizul', 'phone': '01558787829', 'email': 'bayu@gmail.com'},
    {'name': 'Sadia', 'phone': '0638787829', 'email': 'bayu@gmail.com'},
    {'name': 'Wasima', 'phone': '01738787829', 'email': 'bayu@gmail.com'},
    {'name': 'Muhibullah', 'phone': '01738787829', 'email': 'bayu@gmail.com'},
    {'name': 'Ovijit', 'phone': '01738787829', 'email': 'bayu@gmail.com'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.call),
          elevation: 2,
          centerTitle: true,
          backgroundColor: c,
          title: Text(
            "Contact List",
            style: TextStyle(letterSpacing: 2),
          )),
      body: ListView.builder(
          itemCount: contat_list.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  elevation: 8,
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: y,
                        child: Text("${contat_list[index]['name']![0]}")),
                    title: Text("${contat_list[index]['phone']}"),
                    subtitle: Text("${contat_list[index]['email']}"),
                    trailing: Icon(Icons.call_end),
                  ),
                )
              ],
            );
          }),
    );
  }
}
