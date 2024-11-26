import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/country_list_screen.dart';
import 'screens/country_details_screen.dart';

void main() {
  runApp(const CountriesApp());
}

class CountriesApp extends StatelessWidget {
  const CountriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REST Countries App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/countries': (context) => const CountryListScreen(),
        '/details': (context) => const CountryDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
