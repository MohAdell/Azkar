
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/AudioPlayerProvider.dart';
import 'SheikhDetailsPage.dart';
import 'model/Quran_model.dart';

class QuranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final audioPlayerProvider = Provider.of<AudioPlayerProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.onPrimary ,
        title: Text('قائمة الشيوخ',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
      ),
      backgroundColor:Theme.of(context).colorScheme.onPrimary ,

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: sheikhs.length,
              itemBuilder: (context, index) {
                final sheikh = sheikhs[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(sheikh.imageUrl),
                  ),
                  title: Text(
                    sheikh.name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SheikhDetailsPage(sheikh: sheikh),
                      ),
                    );
                  },
                );
              },
            )

          ),
        ],
      ),
    );
  }
}