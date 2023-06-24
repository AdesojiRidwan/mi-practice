import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providerClass.dart';
import 'auth_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> DataPage(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Shopping Cart'),
          ),
          body: AuthScreen(),
        ),
      ),
    );
  }
}

