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
  List<String> item = ['Food', 'Eletronics', 'Groceries', 'Dress'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.shop),
          elevation: 2,
          centerTitle: true,
          backgroundColor: c,
          title: Text(
            "Eid Shopping",
            style: TextStyle(letterSpacing: 3),
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Online Shopping',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w400, letterSpacing: 2),
            ),
            Text(
              "Smart Shopping ! Let's Start",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w400, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 153, 226, 129),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '50% Offer During \n Ramajan Month',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg'))),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 255, 195),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '50% Offer During \n Ramajan Month',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 3),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg'))),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 129, 175, 209),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              '50% Offer During \n Ramajan Month',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.network(
                                      'https://cdn.pixabay.com/photo/2020/05/19/13/48/cartoon-5190942_1280.jpg'))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 196, 196),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item[i],
                            style: TextStyle(fontSize: 20, letterSpacing: 2),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
