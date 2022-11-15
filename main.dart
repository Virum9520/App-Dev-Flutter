import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subscription',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Subscription Plans'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Your Plan',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                  child: Text(
                'Change',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
              Container(
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Divider(
            height: 150,
            thickness: 3,
            color: Colors.grey,
          ),
          Column(
            children: [
              Container(
                height: 50,
                width: 1500,
                child: Text(
                  'Premium',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              Container(
                width: 1500,
                child: Text(
                  "9.99/month",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      'Cancel Anytime',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Offer terms apply',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10, color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 150,
            thickness: 3,
            color: Colors.grey,
          ),
          Container(
            width: 1500,
            child: Text(
              'Card Number',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Container(
            width: 1500,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Enter Card Number',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 400,
                child: Text(
                  'Expiry Date',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                width: 400,
                child: Text(
                  'Security Code',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 700,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'MM/YY',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                ),
              ),
              Container(
                width: 700,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'CVV',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
                ),
              )
            ],
          ),
          Container(
            width: 1500,
            child: Text(
              'Zip Code',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Container(
            width: 1500,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Enter Zip Code',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
          ),
          Container(
            child: TextButton(
              child: Text(
                'Subscribe',
              ),
              onPressed: () {},
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
