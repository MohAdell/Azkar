import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Azkar/ui.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            spacing: 13,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Container(
width: 400,
                height: 150,
                decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage('assets/homePage/morning.jpg'),fit: BoxFit.cover,matchTextDirection: true ),
                  borderRadius: BorderRadius.circular(25),
                 ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Morning',textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage('assets/homePage/evening.webp'),fit: BoxFit.cover,matchTextDirection: true ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Evening',textAlign: TextAlign.start,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage('assets/homePage/night.jpg'),fit: BoxFit.cover,matchTextDirection: true ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Night',textAlign: TextAlign.start,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(

                      image: DecorationImage(image: AssetImage('assets/homePage/Remembrance of prayer.jpg'),fit: BoxFit.cover,matchTextDirection: true ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Remembrance\nof Prayer',textAlign: TextAlign.start,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AzkarDetailScreen()));
                    },
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                    
                        image: DecorationImage(image: AssetImage('assets/homePage/Remembrance after prayer.jpg'),fit: BoxFit.cover,matchTextDirection: true ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Remembrance\nAfter Prayer',textAlign: TextAlign.start,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      );


  }
}
