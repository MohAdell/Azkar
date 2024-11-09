import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Azkar_model/azkar_model.dart';
import '../../../theme/theme_provider.dart';


class AzkarDetailScreen extends StatelessWidget {
  const AzkarDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uniqueCategories = <String>{};
    final List<AzkarModel> uniqueAzkarList = [];
    Size size = MediaQuery.of(context).size;
    for (var azkar in AzkarModel.azkarList) {
      if (uniqueCategories.add(azkar.azkarCategorys)) {
        uniqueAzkarList.add(azkar);
      }
    }
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        width: size.height,
        child: Scaffold(
          backgroundColor:Theme.of(context).colorScheme.onPrimary ,
          // appBar: AppBar(
          //   title: Text('أذكار'),
          // ),
          body: ListView.builder(

            addAutomaticKeepAlives: true,
            itemCount: uniqueAzkarList.length,
            itemBuilder: (context, index) {
              return Column(
                spacing: 13,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AzkarDetailScreenCard(
                  category: uniqueAzkarList[index].azkarCategorys,
                  azkarList: AzkarModel.azkarList.where((azkar) =>
                  azkar.azkarCategorys == uniqueAzkarList[index].azkarCategorys).toList(),
                ),
              ),
            );},
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
color: Theme.of(context).colorScheme.onPrimary,
                        image: DecorationImage(image: AssetImage(uniqueAzkarList[index].imageCategory),fit: BoxFit.cover,matchTextDirection: true ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(25),

                        ),
                        child: Text(uniqueAzkarList[index].azkarCategorys,textAlign: TextAlign.start,style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),
                        ),                      ),
                    ),
                  ),
                  SizedBox(height: 5,),

                  // ListTile(
                  //   style: ListTileStyle.drawer,
                  //   title: Text(uniqueAzkarList[index].azkarCategorys),
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => AzkarDetailScreenCard(
                  //           category: uniqueAzkarList[index].azkarCategorys,
                  //           azkarList: AzkarModel.azkarList.where((azkar) =>
                  //           azkar.azkarCategorys == uniqueAzkarList[index].azkarCategorys).toList(),
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class AzkarDetailScreenCard extends StatefulWidget {
  final String category;
  final List<AzkarModel> azkarList;

  AzkarDetailScreenCard({required this.category, required this.azkarList});

  @override
  State<AzkarDetailScreenCard> createState() => _AzkarDetailScreenCardState();
}

class _AzkarDetailScreenCardState extends State<AzkarDetailScreenCard> {
  double _fontSize = 18.0;
  @override
  void setState(VoidCallback fn) {
    _fontSize = _fontSize.clamp(12.0, 40.0);
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property

        child: Scaffold(

        appBar: AppBar(
leading:IconButton(
  icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.secondary),
  onPressed: () => Navigator.of(context).pop(),
) ,
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .onPrimary,
          title: Text(widget.category, style: TextStyle(color: Theme
              .of(context)
              .colorScheme
              .secondary,fontSize: 22,fontWeight: FontWeight.bold),),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
              icon: Icon(Icons.dark_mode,color: Theme.of(context).colorScheme.secondary,),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _fontSize++;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  _fontSize--;
                });
              },
            ),
          ],
        ),
        body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.azkarList.length,
          itemBuilder: (context, index) {
            if (index == widget.azkarList.length) {
              return Center(
                child: Text(
                  'النهاية',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              );
            } else {
              return Container(
                color: Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Constrain the Column
                    children: [
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${widget.azkarList[index].azkarCategorys} - ${index + 1}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),),
                                ),
                              Padding(
                              padding:EdgeInsets.symmetric(horizontal:10.0),
                              child:Container(
                              height:1.0,
                              width:200.0,
                              color:Theme.of(context).colorScheme.scrim,),),
                        // if (azkarList[index].basmalaQuraan != null ) ...[
                        //   SizedBox(height: 5),
                        //   Text(azkarList[index].basmalaQuraan!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),), // Use the non-null assertion operator (!)
                        // ],
                        SizedBox(height: 5,),
                              if (widget.azkarList[index].basmalaQuraan == true) ...{
                              Theme.of(context).brightness == Brightness.dark
                              ? Image.asset('assets/basmala/بسم الله الرحمان الرحيم dark.png',height: 70,width: 350,fit: BoxFit.cover,)
                  : Image.asset('assets/basmala/بسم الله الرحمان الرحيم.png',height: 70,width: 350,fit: BoxFit.cover,)
                              },
                              Text(widget.azkarList[index].azkarAR,style: TextStyle(fontSize: _fontSize,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),),
                              SizedBox(height: 5,),
                              Text(widget.azkarList[index].azkarEN,style: TextStyle(fontSize: _fontSize,fontWeight: FontWeight.w400,),),
                              SizedBox(height: 5,),
                              Text(widget.azkarList[index].azkarFranco,style: TextStyle(fontSize: _fontSize,fontWeight: FontWeight.w400,),),
                              SizedBox(height: 5,),
                              Text(widget.azkarList[index].azkarFrom,style: TextStyle(fontSize: _fontSize,fontWeight: FontWeight.w400,color: Theme.of(context).colorScheme.secondary),),
                        // if (azkarList[index].TekrarQuraan != null) ...[
                        //   SizedBox(height: 5),
                        //   Text(azkarList[index].TekrarQuraan!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),), // Use the non-null assertion operator (!)
                        // ],
                        SizedBox(height: 10,),
                              Padding(
                              padding:EdgeInsets.symmetric(horizontal:10.0),
                              child:Container(
                              height:1.0,
                              width:400.0,
                              color:Theme.of(context).colorScheme.scrim,),),
                        if (widget.azkarList[index].TekrarQuraan != null) ...{
                          Theme.of(context).brightness == Brightness.dark
                              ?  Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  child: PhysicalModel(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme
                                        .of(context)
                                        .colorScheme
                                        .secondary,
                                    elevation: 10,
                                    shadowColor: Theme
                                        .of(context)
                                        .colorScheme
                                        .primary,
                                    child: Container(
                                      height: 100,
                                      width: 300,
                                      child: Center(child: Text(widget.azkarList[index].TekrarQuraan!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Theme
                                          .of(context)
                                          .colorScheme
                                          .onSecondary),)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                  
                              : Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  child: PhysicalModel(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme
                                        .of(context)
                                        .colorScheme
                                        .secondary,
                                    elevation: 10,
                                    shadowColor: Theme
                                        .of(context)
                                        .colorScheme
                                        .primary,
                                    child: Container(
                                        height: 100,
                                        width: 300,
                                        child: Center(child: Text(widget.azkarList[index].TekrarQuraan!,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Theme
                                            .of(context)
                                            .colorScheme
                                            .onSecondary),)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        },
                              ],
                              ),
                ),
            );
          }
          },
        ),
      ),
    ));
  }

// imageBasmala(context , index){
  Widget Tekrar() {
    return ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: widget.azkarList.length,
            itemBuilder: (context, index) {
              if (widget.azkarList[index].TekrarQuraan == null) {
                return Center(
                  child: Text(
                    'ghghghghghghgh',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                );
              } else {
                return Text(widget.azkarList[index].TekrarQuraan!);
              }
            });
  }
}
