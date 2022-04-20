import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Flutters",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 29,
            ),
          ),
        ),
        leading: Icon(
          Icons.history,
          size: 40,
          color: Colors.blue,
        ),
      ),
      body: appSolid(),
    ));
  }
}

class appSolid extends StatefulWidget {
  const appSolid({Key? key}) : super(key: key);

  @override
  State<appSolid> createState() => _appSolidState();
}

class _appSolidState extends State<appSolid> {
  void inCount() {
    counter++;
  }

  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: counter,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 209, 236, 255),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(5),
            height: 100,
            margin: EdgeInsets.only(top: 10, right: 10, left: 10),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://placeimg.com/640/480/any',
                ),
              ),
              title: Text("User Name " + (index + 1).toString()),
              subtitle: Column(
                children: [
                  Text("This is an Image that you can see here ><"),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Card(
                      color: Color.fromARGB(255, 255, 0, 0),
                      child: Text(
                        "Stock: 9",
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Container(
                child: Column(
                  children: [
                    IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () => {
                              setState(() {
                                inCount();
                              }),
                            },
                        icon: Icon(Icons.add)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
