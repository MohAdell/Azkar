
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Azkar_model/azkar_model.dart';

class AzkarSearchScreen extends StatefulWidget {
   AzkarSearchScreen({super.key});

  @override
  State<AzkarSearchScreen> createState() => _AzkarSearchScreenState();
}

class _AzkarSearchScreenState extends State<AzkarSearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<AzkarModel> _filteredAzkar = [];
  List<AzkarModel> newAzkarList = []; // Initialize as an empty list
  void _searchAzkar(String query) {
    setState(() {
      _filteredAzkar = newAzkarList.where((azkar) =>
      azkar.azkarAR.toLowerCase().contains(query.toLowerCase()) ||
          azkar.azkarEN.toLowerCase().contains(query.toLowerCase())
      ).toList();
      print(newAzkarList);
      print('Query: $query');
      print('Filtered Azkar: $_filteredAzkar');
    });
  }

  @override
  void initState() {
    super.initState();
    _filteredAzkar = newAzkarList;
    newAzkarList = AzkarModel.azkarList.map((azkar) => azkar).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        title: const Text('أذكار'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _searchAzkar,
              decoration: const InputDecoration(
                hintText: 'بحث...',
              ),
            ),
          ),

          Expanded( // Use Expanded to allow ListView to take available space
            child: ListView.builder(
              itemCount: _filteredAzkar.length,
              itemBuilder: (context, index) {
                final azkar = _filteredAzkar[index];
                return ListTile( // Use ListTile for displaying search results
                  title: Text(azkar.azkarAR),
                  subtitle: Text(azkar.azkarEN),
                  // Add other details as needed
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
