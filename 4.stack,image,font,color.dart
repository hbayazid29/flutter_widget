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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.teal,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg"),
                      ),
                      Positioned(
                          right: 20,
                          bottom: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Flutter Developer",
                      style: TextStyle(color: Colors.white)),
                  // style: GoogleFonts.lobster(
                  //     fontSize: 30,
                  //     color: Colors.teal,
                  //     fontWeight: FontWeight.w600)
                  //

                  SizedBox(
                    height: 20,
                  ),
                  Text("App Developer", style: TextStyle(color: c)),
                  SizedBox(
                    height: 25,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.grey,
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      "flutter365@gmail.com",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.grey,
                    leading: Icon(
                      Icons.call,
                      color: y,
                    ),
                    title: Text(
                      "014566565322",
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg",
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
