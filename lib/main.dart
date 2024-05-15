import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var itemList = ["Android", "iOS", "Flutter"];

  var buttonValue = 'Android';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Button Variation"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /** DROP DOWN BUTTON */
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: DropdownButton(
                  items: itemList.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      buttonValue = value!;
                      print(buttonValue);
                    });
                  },
                ),
              ),

              //Elevated Button

              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Elevated Button"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Round Button"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                      ),
                    ]),
              ),
              Container(
                  child: TextButton(
                onPressed: () {},
                child: Text("Text Button"),
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Outline Button"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        shape: StadiumBorder(),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Outline Button"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        shape: ContinuousRectangleBorder(),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      style:
                          IconButton.styleFrom(foregroundColor: Colors.blue))),

              Container(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.swipe_left),
                          style: IconButton.styleFrom(
                              foregroundColor: Colors.blue)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.swipe_right),
                          style: IconButton.styleFrom(
                              foregroundColor: Colors.blue))
                    ],
                  )),
            ],
          )),
    );
  }
}
