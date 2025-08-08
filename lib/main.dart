import 'package:flutter/material.dart';

void main() {
  runApp(const MixplayerApp());
}

class MixplayerApp extends StatefulWidget {
  const MixplayerApp({super.key});

  @override
  State<MixplayerApp> createState() => _MixplayerAppState();
}

class _MixplayerAppState extends State<MixplayerApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mixplayer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: MixplayerHomePage(
        isDarkMode: isDarkMode,
        onThemeToggle: toggleTheme,
      ),
    );
  }
}

class MixplayerHomePage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;

  const MixplayerHomePage({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.light_mode,
                  size: 20,
                  color: widget.isDarkMode 
                    ? Colors.grey 
                    : Theme.of(context).colorScheme.primary,
                ),
                Switch(
                  value: widget.isDarkMode,
                  onChanged: (_) => widget.onThemeToggle(),
                  activeColor: Theme.of(context).colorScheme.primary,
                ),
                Icon(
                  Icons.dark_mode,
                  size: 20,
                  color: widget.isDarkMode 
                    ? Theme.of(context).colorScheme.primary 
                    : Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.music_note,
                size: 100,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'Mixplayer',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Clean Flutter Foundation',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
