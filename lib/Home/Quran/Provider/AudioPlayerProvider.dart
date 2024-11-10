import 'package:flutter/cupertino.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerProvider with ChangeNotifier {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  bool _isMuted = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;

  AudioPlayer get audioPlayer => _audioPlayer;
  bool get isPlaying => _isPlaying;
  bool get isMuted => _isMuted;
  Duration get position => _position;
  Duration get duration => _duration;

  AudioPlayerProvider() {
    _audioPlayer = AudioPlayer();

    _audioPlayer.positionStream.listen((position) {
      _position = position;
      notifyListeners();
    });

    _audioPlayer.durationStream.listen((duration) {
      _duration = duration ?? Duration.zero;
      notifyListeners();
    });
  }

  Future<void> play(String url) async {
    await _audioPlayer.setUrl(url);
    await _audioPlayer.play();
    _isPlaying = true;
    notifyListeners();
  }

  Future<void> pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
    _isPlaying = false;
    notifyListeners();
  }

  Future<void> mute() async {
    _isMuted = !_isMuted;
    await _audioPlayer.setVolume(_isMuted ? 0.0 : 1.0);
    notifyListeners();
  }

  Future<void> seekForward() async {
    final newPosition = _position + Duration(seconds: 15);
    await _audioPlayer.seek(newPosition);
  }

  Future<void> seekBackward() async {
    final newPosition = _position - Duration(seconds: 15);
    await _audioPlayer.seek(newPosition);
  }

  // إضافة دالة Seek
  Future<void> seek(Duration position) async {
    await _audioPlayer.seek(position);
    notifyListeners();
  }
}
