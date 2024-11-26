import 'package:flutter/material.dart';
import '../services/api_service.dart';

class CountryListScreen extends StatefulWidget {
  const CountryListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CountryListScreenState createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  final ApiService apiService = ApiService();
  late Future<List<dynamic>> countriesFuture;
  List<dynamic> countries = [];
  List<dynamic> filteredCountries = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    countriesFuture = apiService.fetchCountries();
    countriesFuture.then((data) {
      print(data);
      setState(() {
        countries = data;
        filteredCountries = data; // Initially, display all countries
      });
    });
  }

  void filterCountries(String query) {
    setState(() {
      filteredCountries = countries
          .where((country) => country['name']['common']
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: filterCountries,
              decoration: InputDecoration(
                labelText: 'Search Countries',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          // Country list
          Expanded(
            child: FutureBuilder<List<dynamic>>(
              future: countriesFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (filteredCountries.isEmpty) {
                  return const Center(
                      child: Text('No countries match your search.'));
                }

                return ListView.builder(
                  itemCount: filteredCountries.length,
                  itemBuilder: (context, index) {
                    final country = filteredCountries[index];
                    return Card(
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(country['flags'][1]),
                        ),
                        title: Text(country['name']['common']),
                        subtitle: Text(country['region'] ?? 'Unknown Region'),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/details',
                            arguments: country,
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
