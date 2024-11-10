
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
  // دالة لتحديد ما إذا كان النص يحتوي على حروف عربية أو إنجليزية
  bool _isArabic(String text) {
    return RegExp(r'[\u0600-\u06FF]').hasMatch(text);
  }
  List<AzkarModel> _filteredAzkar = [];
  List<AzkarModel> newAzkarList = []; // Initialize as an empty list
  void _searchAzkar(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredAzkar = newAzkarList; // إذا كانت الدالة فارغة، نعرض كل الأذكار
      } else {
        if (_isArabic(query)) {
          _filteredAzkar = newAzkarList.where((azkar) =>
              azkar.azkarAR.toLowerCase().contains(query.toLowerCase())
          ).toList();
        }
        else {
          _filteredAzkar = newAzkarList.where((azkar) =>
              azkar.azkarEN.toLowerCase().contains(query.toLowerCase())
          ).toList();
        }
      }
      print('Query: $query');
      print('Filtered Azkar: $_filteredAzkar');
    });  }
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
        backgroundColor: Theme.of(context).colorScheme.onPrimary,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                onChanged: _searchAzkar,
                decoration: InputDecoration(
                  hintText: '...بحث',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  prefixIconConstraints: BoxConstraints(maxWidth: 40),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), // إضافة بعض الحشو داخل النص
                ),
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredAzkar.length,
              itemBuilder: (context, index) {
                final azkar = _filteredAzkar[index];
                if (_isArabic(_searchController.text)) {
    return Container(
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
    color: Theme.of(context).colorScheme.onPrimary,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 5,
    offset: const Offset(0, 3),
    ),
    ],
    ),
    child: ListTile(
    title: Text(azkar.azkarAR),
    ),
    );
    }
    else {
    return Container(
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
    color: Theme.of(context).colorScheme.onPrimary,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 5,
    offset: const Offset(0, 3),
    ),
    ],
    ),
    child: ListTile(
    title: Text(azkar.azkarEN),
    ),
    );
    }
              },
            ),
          ),
        ],
      ),
    );
  }
}
