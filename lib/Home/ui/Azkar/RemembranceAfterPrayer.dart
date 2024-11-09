// import 'package:flutter/material.dart';
//
// void main() {
//   runApp( MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Azkar App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
//
// class AzkarModel {
//   String azkarCategorys;
//   String azkarAR;
//   String azkarFranco;
//   String azkarEN;
//   String azkarFrom;
//
//   AzkarModel({
//     required this.azkarCategorys,
//     required this.azkarAR,
//     required this.azkarFranco,
//     required this.azkarEN,
//     required this.azkarFrom,
//   });
// }
//
// class HomeScreen extends StatelessWidget {
//   final List<AzkarModel> azkarList = [
//     AzkarModel(
//       azkarCategorys: "أذكار الصباح",
//       azkarAR: "أصبحنا وأصبح الملك لله",
//       azkarFranco: "Asbahna wa asbahal mulku lillah",
//       azkarEN: "We have entered the morning and the kingdom is for Allah",
//       azkarFrom: "صحيح",
//     ),
//     AzkarModel(
//       azkarCategorys: "أذكار المساء",
//       azkarAR: "اللهم إني أسألك خير هذا اليوم",
//       azkarFranco: "Allahuma inni asaluka khayra hadha al-yawm",
//       azkarEN: "O Allah, I ask You for the good of this day",
//       azkarFrom: "صحيح",
//     ),
//     AzkarModel(
//       azkarCategorys: "أذكار المساء",
//       azkarAR: "اللهم إني أسألك خير هذا اليوم",
//       azkarFranco: "Allahuma inni asaluka khayra hadha al-yawm",
//       azkarEN: "O Allah, I ask You for the good of this day",
//       azkarFrom: "صحيح",
//     ),
//     AzkarModel(
//       azkarCategorys: "أذكار المساء",
//       azkarAR: "اللهم إني أسألك خير هذا اليوم",
//       azkarFranco: "Allahuma inni asaluka khayra hadha al-yawm",
//       azkarEN: "O Allah, I ask You for the good of this day",
//       azkarFrom: "صحيح",
//     ),
//     AzkarModel(
//       azkarCategorys: "أذكار المساء",
//       azkarAR: "اللهم إني أسألك خير هذا اليوم",
//       azkarFranco: "Allahuma inni asaluka khayra hadha al-yawm",
//       azkarEN: "O Allah, I ask You for the good of this day",
//       azkarFrom: "صحيح",
//     ),
//
//     AzkarModel(
//       azkarCategorys: "أذكار الصباح", // مثال لتكرار الفئة
//       azkarAR: "الحمد لله رب العالمين",
//       azkarFranco: "Alhamdulillah Rabbil Alamin",
//       azkarEN: "All praise is due to Allah, Lord of the worlds",
//       azkarFrom: "صحيح",
//     ),
//     // يمكنك إضافة المزيد من الأذكار هنا
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // استخدم Set للحصول على فئات الأذكار الفريدة
//     final uniqueCategories = <String>{};
//     final List<AzkarModel> uniqueAzkarList = [];
//
//     for (var azkar in azkarList) {
//       if (uniqueCategories.add(azkar.azkarCategorys)) {
//         uniqueAzkarList.add(azkar);
//       }
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('أذكار'),
//       ),
//       body: ListView.builder(
//         itemCount: uniqueAzkarList.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(uniqueAzkarList[index].azkarCategorys),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => AzkarDetailScreen(
//                     category: uniqueAzkarList[index].azkarCategorys,
//                     azkarList: azkarList.where((azkar) =>
//                     azkar.azkarCategorys == uniqueAzkarList[index].azkarCategorys).toList(),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class AzkarDetailScreen extends StatelessWidget {
//   final String category;
//   final List<AzkarModel> azkarList;
//
//   AzkarDetailScreen({required this.category, required this.azkarList});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(category),
//       ),
//       body: ListView.builder(
//         itemCount: azkarList.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(azkarList[index].azkarAR),
//             subtitle: Text(azkarList[index].azkarEN),
//           );
//         },
//       ),
//     );
//   }
// }
