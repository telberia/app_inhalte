import 'package:flutter/material.dart';
import 'lesson.dart';
import 'lesson_detail_page.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/auth_gate.dart';

const supabaseUrl = 'https://zpesmuktowfvcmhfzruw.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpwZXNtdWt0b3dmdmNtaGZ6cnV3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1MzI4NjMsImV4cCI6MjA2NzEwODg2M30.CHKMHnLtrEjclIXHNk34NyEd4GPsYkL6rSBSWEdVqpg';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'NotoSans',
      ),
      home: const AuthGate(),
    );
  }
}

class LessonListPage extends StatelessWidget {
  const LessonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lessons = [
      Lesson(
        title: 'Lektion 1: Einführung',
        description: 'Einführung in grundlegendes Deutsch.',
        pdfUrl: 'App/Lektion_1/vt1_eBook_Lektion_1.pdf',
        audioUrls: [
          'App/Lektion_1/Audio_E1_1.mp3',
          'App/Lektion_1/Hörtexte/audio_1_6.mp3',
          'App/Lektion_1/Hörtexte/audio_1_7.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 2: Begrüßungen',
        description: 'Gängige Begrüßungsphrasen auf Deutsch.',
        pdfUrl: 'App/Lektion_2/vt1_eBook_Lektion_2.pdf',
        audioUrls: [
          'App/Lektion_2/Hörtexte/audio_2_11.mp3',
        ],
        videoUrl: '',
      ),
      // Weitere Lektionen hinzufügen, falls gewünscht
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lektionsliste'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return ListTile(
            title: Text(lesson.title),
            subtitle: Text(lesson.description),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LessonDetailPage(lesson: lesson),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
