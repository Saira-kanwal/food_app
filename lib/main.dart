import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:food_app/viewModels/oath_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
        ChangeNotifierProvider(create: (_) => OathViewModel()),
        ],
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        )
    );
  }
}


