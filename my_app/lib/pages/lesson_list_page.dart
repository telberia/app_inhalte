import 'package:flutter/material.dart';
import '../lesson.dart';
import '../lesson_detail_page.dart';
import 'login_page.dart';

class LessonListPage extends StatelessWidget {
  final Map<String, dynamic>? userData;
  const LessonListPage({super.key, this.userData});

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
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle),
            onSelected: (value) async {
              if (value == 'info') {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Benutzerinfo'),
                    content: Text(userData != null
                        ? 'Name: ${userData!['full_name'] ?? ''}\nEmail: ${userData!['email'] ?? ''}\nTelefon: ${userData!['phone'] ?? ''}'
                        : 'Keine Benutzerdaten'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Schließen'),
                      ),
                    ],
                  ),
                );
              } else if (value == 'logout') {
                
                // await Supabase.instance.client.auth.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'info', child: Text('Benutzerinfo')),
              const PopupMenuItem(value: 'logout', child: Text('Abmelden')),
            ],
          ),
        ],
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