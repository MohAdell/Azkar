import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Azkar_model/azkar_model.dart';
import '../../theme/theme_provider.dart';
class RunFavoritesPage extends StatelessWidget {
  const RunFavoritesPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child: FavoritesPage(),
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<AzkarModel> favorites = [];

  void _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getStringList('favorites');

    if (favoritesJson != null) {
      setState(() {
        favorites = favoritesJson.map((json) => AzkarModel.fromJson(jsonDecode(json))).toList();
      });
    }
  }
  void _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = favorites.map((azkar) => jsonEncode(azkar.toJson())).toList();
    await prefs.setStringList('favorites', favoritesJson);
  }
  @override
  void initState() {
    super.initState();
    // Initialize favorites (e.g., from SharedPreferences or a database)
    _loadFavorites();
    Provider.of<FavoritesNotifier>(context, listen: false)._loadFavorites();
  }
  @override
  Widget build(BuildContext context) {
    final favoritesNotifier = Provider.of<FavoritesNotifier>(context);
    final favorites = favoritesNotifier.value;
    List<AzkarModel> getRelatedAzkar(AzkarModel currentAzkar) {
      return AzkarModel.azkarList.where((azkar) => azkar.azkarCategorys == currentAzkar.azkarCategorys && azkar != currentAzkar).toList();
    }
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,color: Theme.of(context).colorScheme.onPrimary,)
          ),
          title: Text('المفضلة',style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),),
        ),
        body: ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            final azkar = favorites[index];
            bool showFullList = false; // Add a variable to control visibility

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
              child: Column( // Wrap ListTile with a Column
                children: [
                  ListTile(
                    title: Text(azkar.azkarAR,style: TextStyle(fontSize: 18),),
                    // ... display other details ...
                  ),
                  Row( // Wrap trailing widgets in a Row
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            favorites.removeAt(index);
                            _saveFavorites();
                          });
                        },
                      ),
                      IconButton( // Add "Read More" button
                        icon: const Icon(Icons.arrow_drop_down),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RelatedAzkarPage(currentAzkar: azkar),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
    );
  }
}
class FavoritesNotifier extends ValueNotifier<List<AzkarModel>> {
  FavoritesNotifier() : super([]);
  var isFavorite = false;
  // To update values and notify listeners
  void updateFavorite(bool value) {
    isFavorite = value;
    notifyListeners();
  }
  void addFavorite(AzkarModel azkar) {
    value = [...value, azkar];
    _saveFavorites();
  }

  void removeFavorite(AzkarModel azkar) {
    value = value.where((a) => a.azkarAR != azkar.azkarAR).toList(); // Assuming azkarAR is unique
    _saveFavorites();
  }

  void _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = value.map((azkar) => jsonEncode(azkar.toJson())).toList();
    await prefs.setStringList('favorites', favoritesJson);
  }

  void _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getStringList('favorites');

    if (favoritesJson != null) {
      value = favoritesJson.map((json) => AzkarModel.fromJson(jsonDecode(json))).toList();
    }
  }
}

class RelatedAzkarPage extends StatefulWidget {
  final AzkarModel currentAzkar;

  const RelatedAzkarPage({Key? key, required this.currentAzkar}) : super(key: key);

  @override
  State<RelatedAzkarPage> createState() => _RelatedAzkarPageState();
}

class _RelatedAzkarPageState extends State<RelatedAzkarPage> {
  @override
  Widget build(BuildContext context) {
    List<AzkarModel> relatedAzkar = getRelatedAzkar(widget.currentAzkar);

    return Scaffold(
      appBar: AppBar(
        title: const Text('الأذكار ذات الصلة'),
      ),
      body: ListView.builder(
        itemCount: relatedAzkar.length,
        itemBuilder: (context, index) {
          final azkar = relatedAzkar[index];
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
            child: Column( // Wrap ListTile with a Column
              children: [
            ListTile(
            title: Text(azkar.azkarAR,style: TextStyle(fontSize: 18),),
          )
          ],
          ),
          );
        },
      ),
    );
  }

  List<AzkarModel> getRelatedAzkar(AzkarModel currentAzkar) {
    return AzkarModel.azkarList.where((azkar) => azkar.azkarCategorys == currentAzkar.azkarCategorys && azkar != currentAzkar).toList();
  }
}