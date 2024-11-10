import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'model/Quran_model.dart';

class SheikhDetailsPage extends StatefulWidget {
  final Sheikh sheikh;
  SheikhDetailsPage({required this.sheikh});

  @override
  _SheikhDetailsPageState createState() => _SheikhDetailsPageState();
}

class _SheikhDetailsPageState extends State<SheikhDetailsPage> {
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;
  bool isMuted = false;
  Duration position = Duration.zero;
  Duration duration = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer.positionStream.listen((position) {
      setState(() {
        this.position = position;
      });
    });

    _audioPlayer.durationStream.listen((duration) {
      setState(() {
        this.duration = duration ?? Duration.zero;
      });
    });
    _SheikhDetailsPageState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playPause() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  Future<void> _stop() async {
    await _audioPlayer.stop();
    setState(() {
      isPlaying = false;
    });
  }

  Future<void> _seekForward() async {
    final newPosition = position + Duration(seconds: 15);
    await _audioPlayer.seek(newPosition);
  }

  Future<void> _seekBackward() async {
    final newPosition = position - Duration(seconds: 15);
    await _audioPlayer.seek(newPosition);
  }

  Future<void> _muteUnmute() async {
    if (isMuted) {
      await _audioPlayer.setVolume(1.0);
    } else {
      await _audioPlayer.setVolume(0.0);
    }
    setState(() {
      isMuted = !isMuted;
    });
  }

  Future<void> _playAudio(String audioUrl) async {
    await _audioPlayer.setUrl(audioUrl);
    await _audioPlayer.play();
    setState(() {
      isPlaying = true;
    });
  }
  final List<String> surahNames = [
    'الفاتحة',
    'البقرة',
    'آل عمران',
    'النساء',
    'المائدة',
    'الأنعام',
    'الأعراف',
    'الأنفال',
    'التوبة',
    'يونس',
    'هود',
    'يوسف',
    'الرعد',
    'إبراهيم',
    'الحجر',
    'النحل',
    'الإسراء',
    'الكهف',
    'مريم',
    'طه',
    'الأنبياء',
    'الحج',
    'المؤمنون',
    'النور',
    'الفرقان',
    'الشعراء',
    'النمل',
    'القصص',
    'العنكبوت',
    'الروم',
    'لقمان',
    'السجدة',
    'الأحزاب',
    'سبأ',
    'فاطر',
    'يس',
    'الصافات',
    'ص',
    'الزمر',
    'غافر',
    'فصلت',
    'الشورى',
    'الزخرف',
    'الدّخان',
    'الجاثية',
    'الأحقاف',
    'محمد',
    'الفتح',
    'الحجرات',
    'ق',
    'الذاريات',
    'الطور',
    'النجم',
    'القمر',
    'الرحمن',
    'الواقعة',
    'الحديد',
    'المجادلة',
    'الحشر',
    'الممتحنة',
    'الصف',
    'الجمعة',
    'المنافقون',
    'التغابن',
    'الطلاق',
    'التحريم',
    'الملك',
    'القلم',
    'الحاقة',
    'المعارج',
    'نوح',
    'الجن',
    'المزمل',
    'المدثر',
    'القيامة',
    'الإنسان',
    'المرسلات',
    'النبأ',
    'النازعات',
    'عبس',
    'التكوير',
    'الإنفطار',
    'المطففين',
    'الإنشقاق',
    'البروج',
    'الطارق',
    'الأعلى',
    'الغاشية',
    'الفجر',
    'البلد',
    'الشمس',
    'الليل',
    'الضحى',
    'الشرح',
    'التين',
    'العلق',
    'القدر',
    'البينة',
    'الزلزلة',
    'العاديات',
    'القارعة',
    'التكاثر',
    'العصر',
    'الهمزة',
    'الفيل',
    'قريش',
    'الماعون',
    'الكوثر',
    'الكافرون',
    'النصر',
    'المسد',
    'الإخلاص',
    'الفلق',
    'الناس',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.onPrimary ,

      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.onPrimary ,

        title: Text(widget.sheikh.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(widget.sheikh.imageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.sheikh.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.sheikh.description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('الصوتيات:'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.sheikh.audioUrls.length,
              itemBuilder: (context, index) {
                final surahName = surahNames[index];
                final audioUrl = widget.sheikh.audioUrls[index];
                return ListTile(
                  title: Text( '${surahName} ${index + 01}'),
                  trailing: Icon(Icons.play_arrow),
                  onTap: () {
                    _playAudio(audioUrl);
                  },
                );
              },
            ),
          ),
          if (isPlaying)
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    "الوقت الحالي: ${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) {
                      _audioPlayer.seek(Duration(seconds: value.toInt()));
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.replay_10),
                        onPressed: _seekBackward,
                      ),
                      IconButton(
                        icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                        onPressed: _playPause,
                      ),
                      IconButton(
                        icon: Icon(Icons.forward_10),
                        onPressed: _seekForward,
                      ),
                      IconButton(
                        icon: Icon(isMuted ? Icons.volume_off : Icons.volume_up),
                        onPressed: _muteUnmute,
                      ),
                      IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: _stop,
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
