import 'package:flutter/material.dart';

void main() {
  runApp(const MixplayerApp());
}

class MixplayerApp extends StatelessWidget {
  const MixplayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mixplayer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MixplayerHomePage(),
    );
  }
}

class MixplayerHomePage extends StatefulWidget {
  const MixplayerHomePage({super.key});

  @override
  State<MixplayerHomePage> createState() => _MixplayerHomePageState();
}

class _MixplayerHomePageState extends State<MixplayerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mixplayer'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.music_note,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 24),
              Text(
                'Mixplayer',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Clean Flutter Foundation',
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
