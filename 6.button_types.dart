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
          leading: Icon(Icons.send),
          elevation: 5,
          centerTitle: true,
          backgroundColor: c,
          title: Text(
            "Button demo",
            style: TextStyle(letterSpacing: 2),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: y,
              onPressed: () {},
              child: Text("Material Button"),
            ),
            SizedBox(
              height: 12,
            ),
            FlatButton(
                color: Colors.teal,
                onPressed: () {},
                child: Text('Flat Button')),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            SizedBox(
              height: 12,
            ),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            SizedBox(
              height: 12,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Raised BUtton'),
            ),
            SizedBox(
              height: 12,
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('Outline Button'),
            ),
            SizedBox(
              height: 12,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.save)),
            SizedBox(
              height: 12,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 12,
            ),
            TextButton.icon(
                onPressed: () {
                  print('I am Text Icon Button');
                },
                icon: Icon(Icons.person_add),
                label: Text('Add Me')),
          ],
        ),
      ),
    );
  }
}
