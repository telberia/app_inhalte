import 'package:flutter/material.dart';
import 'lesson.dart';
import 'lesson_detail_page.dart';

void main() {
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
      ),
      home: const LessonListPage(),
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
        pdfUrl: 'assets/App/Lektion_1/vt1_eBook_Lektion_1.pdf',
        audioUrls: [
          'assets/App/Lektion_1/Tabellen/Tab 1_1 - Grußformeln und Befinden - informell.mp3',
          'assets/App/Lektion_1/Hörtexte/audio_1_6.mp3',
          'assets/App/Lektion_1/Hörtexte/audio_1_7.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 2: Begrüßungen',
        description: 'Gängige Begrüßungsphrasen auf Deutsch.',
        pdfUrl: 'assets/App/Lektion_2/vt1_eBook_Lektion_2.pdf',
        audioUrls: [
          'assets/App/Lektion_2/Hörtexte/audio_2_11.mp3',
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
