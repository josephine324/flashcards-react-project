import 'package:flutter/material.dart';

class CountryDetailsScreen extends StatelessWidget {
  const CountryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final country = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(country['name']['common']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                country['flags'][1],
                height: 150,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${country['name']['common']}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text('Region: ${country['region'] ?? 'Unknown'}'),
                    Text('Subregion: ${country['subregion'] ?? 'Unknown'}'),
                    Text('Population: ${country['population']}'),
                    const SizedBox(height: 16),
                    const Text(
                      'Languages:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    ...?country['languages']
                        ?.values
                        .map((lang) => Text('- $lang')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
