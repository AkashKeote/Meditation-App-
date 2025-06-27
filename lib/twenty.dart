import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FocusAttentionScreen(),
    );
  }
}

class FocusAttentionScreen extends StatefulWidget {
  const FocusAttentionScreen({super.key});

  @override
  _FocusAttentionScreenState createState() => _FocusAttentionScreenState();
}

class _FocusAttentionScreenState extends State<FocusAttentionScreen> {
  bool isPlaying = false; // Track play/pause state

  void togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/17.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.close, color: Colors.grey[600]),
                          onPressed: () {},
                          iconSize: 30,
                          padding: EdgeInsets.all(8),
                          constraints: BoxConstraints(),
                          splashRadius: 20,
                          tooltip: 'Close',
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon:
                                  Icon(Icons.favorite, color: Colors.grey[600]),
                              onPressed: () {},
                              iconSize: 30,
                              padding: EdgeInsets.all(8),
                              constraints: BoxConstraints(),
                              splashRadius: 20,
                              tooltip: 'Favorite',
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon:
                                  Icon(Icons.download, color: Colors.grey[600]),
                              onPressed: () {},
                              iconSize: 30,
                              padding: EdgeInsets.all(8),
                              constraints: BoxConstraints(),
                              splashRadius: 20,
                              tooltip: 'Download',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Focus Attention',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '7 DAYS OF CALM',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.replay_10, color: Colors.grey[600]),
                          onPressed: () {},
                          iconSize: 30,
                          tooltip: 'Replay 10 seconds',
                        ),
                        SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: Colors.white),
                            onPressed: togglePlayPause,
                            iconSize: 40,
                            tooltip: isPlaying ? 'Pause' : 'Play',
                          ),
                        ),
                        SizedBox(width: 16),
                        IconButton(
                          icon: Icon(Icons.forward_10, color: Colors.grey[600]),
                          onPressed: () {},
                          iconSize: 30,
                          tooltip: 'Forward 10 seconds',
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Slider(
                      value: 1.5,
                      min: 0,
                      max: 45,
                      onChanged: (value) {},
                      activeColor: Colors.grey[600],
                      inactiveColor: Colors.grey[300],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '01:30',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '45:00',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
