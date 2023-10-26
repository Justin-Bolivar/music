import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int initialSeconds = 3 * 60 + 6; // 3 minutes and 6 seconds
  late int currentSeconds;
  late Timer? countdownTimer;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    currentSeconds = initialSeconds;
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentSeconds > 0) {
        setState(() {
          currentSeconds--;
        });
      } else {
        stopCountdown();
      }
    });
  }

  void stopCountdown() {
    if (countdownTimer != null) {
      countdownTimer!.cancel();
      countdownTimer = null;
    }
  }

  @override
  void dispose() {
    stopCountdown();
    super.dispose();
  }

  void togglePlayPause() {
    if (isPlaying) {
      stopCountdown();
    } else {
      startCountdown();
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const Alignment(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/Dominic_Fike_-_Mona_Lisa.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      alignment: const Alignment(0.00, 0.00),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment(0.00, 1.00),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: Text(
                    'Mona Lisa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              const Text(
                'Dominic Fike',
                style: TextStyle(
                  color: Color(0xFF5E5C5C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  '${(currentSeconds ~/ 60).toString().padLeft(2, '0')}:${(currentSeconds % 60).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Color(0xFFFF0000),
                        size: 24,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Icon(
                        Icons.skip_previous_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    GestureDetector(
                      onTap: togglePlayPause,
                      child: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Icon(
                        Icons.skip_next_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Icon(
                        Icons.repeat,
                        color: Color(0xFF5E5C5C),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
