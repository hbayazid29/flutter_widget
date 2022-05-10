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
  var st_list = ['Flutter', 'Android', 'Web', 'Graphics', 'Game'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.share),
            elevation: 5,
            centerTitle: true,
            backgroundColor: c,
            title: Text(
              "Listview Builder",
              style: TextStyle(letterSpacing: 2),
            )),
        body: ListView.builder(
            itemCount: st_list.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Card(
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                            color: Color.fromARGB(255, 105, 255, 11))),
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        title: Text(st_list[index]),
                      ),
                    ),
                  ),
                )));
  }
}
