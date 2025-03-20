import 'package:flutter/material.dart';
import 'presentation/pages/topmenu.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,            
        theme: ThemeData(
          useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo, width: 1),
          ),
        ),
      ),
      home: const TopMenuPage(),
    );
  }


}

