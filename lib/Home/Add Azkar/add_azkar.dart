import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Azkar_model/azkar_model.dart';
import '../../SharedPref/shared_preferences.dart';

class AzkarPage extends StatefulWidget {
  @override
  _AzkarPageState createState() => _AzkarPageState();
}

class _AzkarPageState extends State<AzkarPage> {
  final _categoryController = TextEditingController();
  final _azkarARController = TextEditingController();
  final _azkarFrancoController = TextEditingController();
  final _azkarENController = TextEditingController();
  final _azkarFromController = TextEditingController();
  final _tekrarController = TextEditingController();

  bool _isFavorite = false;
@override
  void initState() {
    super.initState();
    _AzkarPageState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(title: Text("إضافة ذكر"),backgroundColor: Theme.of(context).colorScheme.onPrimary,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              obscureText: true,
              showCursor: true,
              style: TextStyle(
                color: Theme.of(context).colorScheme.scrim
              ),
              cursorColor: Theme.of(context).colorScheme.onSurface,
              controller: _categoryController,
              decoration: InputDecoration(labelText: 'الفئة'),
            ),
            TextField(
              controller: _azkarARController,
              decoration: InputDecoration(labelText: 'الذكر بالعربية'),
            ),
            TextField(
              controller: _azkarFrancoController,
              decoration: InputDecoration(labelText: 'الذكر بالفرانكو'),
            ),
            TextField(
              controller: _azkarENController,
              decoration: InputDecoration(labelText: 'الذكر بالإنجليزية'),
            ),
            TextField(
              controller: _azkarFromController,
              decoration: InputDecoration(labelText: 'المصدر'),
            ),
            TextField(
              controller: _tekrarController,
              decoration: InputDecoration(labelText: 'تكرار '),
            ),
            SwitchListTile(
              title: Text('هل هو مفضل؟'),
              value: _isFavorite,
              onChanged: (value) {
                setState(() {
                  _isFavorite = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_categoryController.text.isNotEmpty &&
                    _azkarARController.text.isNotEmpty &&
                    _azkarENController.text.isNotEmpty &&
                    _azkarFromController.text.isNotEmpty ) {

                  final newAzkar = AzkarModel(
                    _categoryController.text,
                    _azkarARController.text,
                    _azkarFrancoController.text,
                    _azkarENController.text,
                    _azkarFromController.text,
                    imageCategory: 'image_path', // Placeholder
                    TekrarQuraan: _tekrarController.text,
                    basmalaQuraan: true,
                    isFavorite: _isFavorite,
                  );

                  // إضافة الذكر إلى الذاكرة باستخدام Provider
                  Provider.of<AzkarModel>(context, listen: false).addAzkar(newAzkar);

                  // تخزين الذكر في SharedPreferences
                  AzkarRepository().saveAzkar(newAzkar);

                  _categoryController.clear();
                  _azkarARController.clear();
                  _azkarFrancoController.clear();
                  _azkarENController.clear();
                  _azkarFromController.clear();
                  _tekrarController.clear();
                } else {
                  // إذا كانت بعض الحقول فارغة، يمكنك عرض رسالة تحذيرية للمستخدم
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('يرجى ملء جميع الحقول')),
                  );
                }
              },
              child: Text('إضافة ذكر'),
            ),
            Expanded(
              child: FutureBuilder<List<AzkarModel>>(
                future: AzkarRepository().loadAzkar(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('حدث خطأ'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('لا توجد أذكار'));
                  }

                  final azkarList = snapshot.data!;

                  return ListView.builder(
                    itemCount: azkarList.length,
                    itemBuilder: (context, index) {
                      final azkar = azkarList[index];
                      return ListTile(
                        title: Text(azkar.azkarAR),
                        subtitle: Text(azkar.azkarEN),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(
                                azkar.isFavorite! ? Icons.favorite : Icons.favorite_border,
                                color: azkar.isFavorite! ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  azkar.updateFavorite(!azkar.isFavorite!);
                                });
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // عند الضغط على زر الحذف، نقوم بحذف الذكر
                                Provider.of<AzkarModel>(context, listen: false).removeAzkar(azkar);
                              },
                            ),
                          ],
                        ),
                        onTap: () {
                          // عند الضغط على الذكر ننتقل لصفحة تفاصيل الذكر
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AzkarDetailPage(azkar: azkar),
                            ),
                          );
                        },
                      );
                    },
                      );
                    },
                  )
              ),

          ],
        ),
      ),
    );
  }
}
class AzkarDetailPage extends StatelessWidget {
  final AzkarModel azkar;

  AzkarDetailPage({required this.azkar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.scrim,
        title: Text("تفاصيل الذكر"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              Provider.of<AzkarModel>(context, listen: false).removeAzkar(azkar);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الفئة: ${azkar.azkarCategorys}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'الذكر بالعربية: ${azkar.azkarAR}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            // Text(
            //   'الذكر بالفرانكو: ${azkar.azkarFranco}',
            //   style: TextStyle(fontSize: 18),
            // ),
            SizedBox(height: 10),
            Text(
              'الذكر بالإنجليزية: ${azkar.azkarEN}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'من: ${azkar.azkarFrom}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'تكرار القرآن: ${azkar.TekrarQuraan}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'هل هو مفضل؟ ${azkar.isFavorite! ? "نعم" : "لا"}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
