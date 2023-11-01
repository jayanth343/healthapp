import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.jpg',
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ),
        backgroundColor: Color.fromRGBO(64, 188, 186, 6),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Column(children: <Widget>[
        Container(
          height: 120,
          color: Color.fromRGBO(64, 188, 186, 6),
          child: const Center(
            child: Text(
              'Welcome Back!!',
              style: TextStyle(
                  fontFamily: 'Schyler',
                  fontSize: 40,
                  color: Colors.white,
                  letterSpacing: 2.0),
            ),
          ),
        ),
        Container(
          height: 20,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 40,
          color: Color.fromRGBO(64, 188, 186, 6),
          child: const Center(
            child: Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  color: Colors.black),
            ),
          ),
        ),
        Container(
          height: 20,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
          color: Color.fromARGB(255, 37, 228, 241),
          child: Text(
            'Alarms:                              Take Paracetamol-50mg at 3:30\n\nCurrent Appointments:    None\n\nNext Appointment:          General Checkup at 3:00 PM on 3-10-2022  ',
            style: TextStyle(
              fontFamily: 'InterTight',
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 20,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 40,
          color: Color.fromRGBO(64, 188, 186, 6),
          child: const Center(
            child: Text(
              'Health Status',
              style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  color: Colors.black),
            ),
          ),
        ),
        Container(
          height: 20,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
          color: Color.fromARGB(255, 37, 228, 241),
          child: const Text(
            '\n\n\nBlood Pressure:             120/80 \n\nBlood Oxygen Level:     98% \n\nCalories burnt today:    250  ',
            style: TextStyle(
              fontFamily: 'InterTight',
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 107,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.cover)),
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nav()),
          );
        },
        icon: Icon(Icons.call),
        label: const Text('Contact'),
        backgroundColor: Color.fromARGB(255, 14, 120, 207),
      ),
    );
  }
}

class nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.jpg',
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ),
        backgroundColor: Color.fromRGBO(64, 188, 186, 6),
        actions: [
          IconButton(
            onPressed: () => exit(0),
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 936,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg3.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            color: Color.fromRGBO(64, 188, 186, 6),
            alignment: Alignment.center,
            height: 50,
            child: Text(
              'Contact Us',
              style: TextStyle(fontSize: 45, color: Colors.white),
            ),
          ),
          Container(
            height: 836,
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 150.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () =>
                    Clipboard.setData(ClipboardData(text: '8104568345')).then(
                  (value) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Number has been Copied to Clipboard'),
                    ));
                  },
                ),
                child: Text("Customer Care"),
              ),
            ),
          ),
          Container(
            height: 836,
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 150.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () =>
                    Clipboard.setData(ClipboardData(text: '8105004567')).then(
                  (value) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Number has been Copied to Clipboard'),
                    ));
                  },
                ),
                child: Text("Call a Doctor"),
              ),
            ),
          ),
          Container(
            height: 836,
            alignment: Alignment.center,
            child: SizedBox(
              width: 150.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () =>
                    Clipboard.setData(ClipboardData(text: '9912356400')).then(
                  (value) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Number has been Copied to Clipboard'),
                    ));
                  },
                ),
                child: Text("Call a Physician"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Log in';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            'assets/images/logo.jpg',
            fit: BoxFit.contain,
            width: 100,
            height: 100,
          ),
          backgroundColor: Color.fromRGBO(64, 188, 186, 6),
        ),
        body: Center(
          child: Stack(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  setState(() {
                    buttonName = 'Logged in';
                  });
                },
                child: Text('login'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
