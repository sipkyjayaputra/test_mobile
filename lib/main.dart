import 'package:flutter/material.dart';
import 'package:test_app/pages/bill.dart';
import 'package:test_app/pages/item_detail.dart';
import 'package:test_app/pages/order.dart';
import 'package:test_app/pages/profile.dart';
import 'package:test_app/pages/sign_in.dart';
import 'package:test_app/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SigninPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/home': (context) => MyHomePage(),
        '/login': (context) => SigninPage(),
        '/register':(context) => SignupPage(),
        '/item-detail':(context) => ItemDetail(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    OrderPage(),
    BillPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Bill'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
