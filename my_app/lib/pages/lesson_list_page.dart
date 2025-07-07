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
          'App/Lektion_1/Tab 1_1 - Grußformeln und Befinden - informell.mp3',
          'App/Lektion_1/Tab 1_2 - Grußformeln und Befinden - formell.mp3',
          'App/Lektion_1/Tab 1_3 - Vorstellung - informell.mp3',
          'App/Lektion_1/Tab 1_4 - Vorstellung - formell.mp3',
          'App/Lektion_1/Tab 1_5 - Vorstellung - Alternative.mp3',
          'App/Lektion_1/audio_1_6.mp3',
          'App/Lektion_1/audio_1_7.mp3',
          'App/Lektion_1/Tab 1_8 - Ergänzung zum Dialog.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 2: Begrüßungen',
        description: 'Gängige Begrüßungsphrasen auf Deutsch.',
        pdfUrl: 'App/Lektion_2/vt1_eBook_Lektion_2.pdf',
        audioUrls: [
          'App/Lektion_2/Audio E2_1.mp3',
          'App/Lektion_2/Tab 2_1 - Regionale Begrüßungen - ugs.mp3',
          'App/Lektion_2/Tab 2_2 - Begrüßungen.mp3',
          'App/Lektion_2/Tab 2_3 - Alter und Hobbys - informell.mp3',
          'App/Lektion_2/Tab 2_4 - Alter und Hobbys - formell.mp3',
          'App/Lektion_2/Tab 2_5 - Arbeit - informell.mp3',
          'App/Lektion_2/Tab 2_6 - Arbeit - formell.mp3',
          'App/Lektion_2/Tab 2_7 - Studium - informell und formell.mp3',
          'App/Lektion_2/Tab 2_8 - Studium - Verneinung_arbeiten und studieren.mp3',
          'App/Lektion_2/Tab 2_9 - Berufliche Situation - Alternativen.mp3',
          'App/Lektion_2/Tab 2_10 - Elliptische Gegenfrage - informell und formell.mp3',
          'App/Lektion_2/audio_2_11.mp3',
          'App/Lektion_2/Audio 2_12 - Text - Ich bin Studentin.mp3',
          'App/Lektion_2/Tab 2_13 - Verabschiedungen.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 3:',
        description: ' Lektion 3.',
        pdfUrl: 'App/Lektion_3/vt1_eBook_Lektion_3.pdf',
        audioUrls: [
          
          'App/Lektion_3/Tab 3_1 - Sprachkenntnisse.mp3',
          'App/Lektion_3/Tab 3_2 - Sprachkenntnisse - Variationen.mp3',
          'App/Lektion_3/Tab 3_3 - Verständnisprobleme.mp3',
          'App/Lektion_3/Tab 3_4 - um Wiederholung bitten.mp3',
          'App/Lektion_3/Tab 3_5 - Entschuldigung als Ansprache.mp3',
          'App/Lektion_3/Tab 3_6 - Entschuldigung - Variationen.mp3',
          'App/Lektion_3/Audio 3_7 - Text - Noch mal, bitte.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 4:',
        description: 'Lektion 4.',
        pdfUrl: 'App/Lektion_4/vt1_eBook_Lektion_4.pdf',
        audioUrls: [
          
          'App/Lektion_4/Tab 4_1 - ja, nein, vielleicht.mp3',
          'App/Lektion_4/Tab 4_2 - Bestätigung und Verneinung.mp3',
          'App/Lektion_4/Tab 4_3 - danke, bitte, gerne.mp3',
          'App/Lektion_4/Tab 4_4 - danke - Variationen.mp3',
          'App/Lektion_4/Tab 4_5 - bitte und gerne - Variationen.mp3',
          'App/Lektion_4/Tab 4_6 - Fahrkarte und Identifikation.mp3',
          'App/Lektion_4/Tab 4_7 - warten und folgen.mp3',
          'App/Lektion_4/Tab 4_8 - Hilfe anbieten.mp3',
          'App/Lektion_4/Tab 4_9 - um Hilfe bitten.mp3',
          'App/Lektion_4/Tab 4_10 - Orientierung und Verfügbarkeit.mp3',
          'App/Lektion_4/Tab 4_11 - Richtungsangaben.mp3',
          'App/Lektion_4/Tab 4_12 - Ortsangaben.mp3',
          'App/Lektion_4/Tab 4_13 - Preis.mp3',
          'App/Lektion_4/Tab 4_14 - kurze Bestätigung.mp3',
          'App/Lektion_4/Tab 4_15 - kurze Bestätigung ugs.mp3',
          'App/Lektion_4/Audio 4_16 - Text - Kannst du mir kurz helfen.mp3',
          'App/Lektion_4/Audio 4_17 - Text - Wie kann ich Ihnen helfen.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 5:',
        description: 'Lektion 5.',
        pdfUrl: 'App/Lektion_5/vt1_eBook_Lektion_5.pdf',
        audioUrls: [
          'App/Lektion_5/Audio 5_21 - Text - Einen Tisch für zwei Personen bitte.mp3',
          'App/Lektion_5/Audio 5_22 - Text - Was darf ich Ihnen bringen.mp3',
          'App/Lektion_5/Audio 5_23 - Text - Die Rechnung bitte.mp3',
          'App/Lektion_5/Audio W5_1.mp3',
          'App/Lektion_5/Tab 5_1 - Nach einem Tisch fragen.mp3',
          'App/Lektion_5/Tab 5_2 - Tischreservierung.mp3',
          'App/Lektion_5/Tab 5_3 - Bestellung aufnehmen.mp3',
          'App/Lektion_5/Tab 5_4 - um ewas bitten und bestellen.mp3',
          'App/Lektion_5/Tab 5_5 - bestellen-Alternative.mp3',
          'App/Lektion_5/Tab 5_6 - bestellen mit nonverbaler Ergänzung.mp3',
          'App/Lektion_5/Tab 5_7 - weitere Bestellphrasen.mp3',
          'App/Lektion_5/Tab 5_8 - Spezifikationen - vor Ort oder zum Mitnehmen.mp3',
          'App/Lektion_5/Tab 5_9 - Spezifikationen - Getränkezusätze.mp3',
          'App/Lektion_5/Tab 5_10 - Wasserarten.mp3',
          'App/Lektion_5/Tab 5_11 - Alkoholische Getränke.mp3',
          'App/Lektion_5/Tab 5_12 - Bezahlprozess.mp3',
          'App/Lektion_5/Tab 5_13 - Trinkgeld geben.mp3',
          'App/Lektion_5/Tab 5_14 - Quittung.mp3',
          'App/Lektion_5/Tab 5_15 - sich höflich bedanken.mp3',
          'App/Lektion_5/Tab 5_16 - Toilette.mp3',
          'App/Lektion_5/Tab 5_17 - sich entschuldigen.mp3',
          'App/Lektion_5/Tab 5_18 - telefonisch Essen bestellen.mp3',
          'App/Lektion_5/Tab 5_19 - telefonisch Essen bestellen - Adresse angeben.mp3',
          'App/Lektion_5/Tab 5_20 - telefonisch Essen bestellen - Rückfragen und Hinweise.mp3',
        ],
        videoUrl: '',
      ),
      Lesson(
        title: 'Lektion 6:',
        description: 'Lektion 6.',
        pdfUrl: 'App/Lektion_6/vt1_eBook_Lektion_6.pdf',
        audioUrls: [
          'App/Lektion_6/Audio 6_13 - Text - Wohin möchten Sie fahren.mp3',
          'App/Lektion_6/Audio 6_14 - Text - Wann kommt der nächste Bus.mp3',
          'App/Lektion_6/Audio W6_1.mp3',
          'App/Lektion_6/Tab 6_1 - Verkehrsmittel - Ich nehme.mp3',
          'App/Lektion_6/Tab 6_2 - Verkehrsmittel - Ich fahre mit.mp3',
          'App/Lektion_6/Tab 6_3 - Verkehrsmittel - zu Fuß und mit dem Flugzeug.mp3',
          'App/Lektion_6/Tab 6_4 - Orientierung und Ticketkauf.mp3',
          'App/Lektion_6/Tab 6_5 - richtiges Verkehrsmittel finden.mp3',
          'App/Lektion_6/Tab 6_6 - Ziel angeben.mp3',
          'App/Lektion_6/Tab 6_7 - um Auskunft bitten.mp3',
          'App/Lektion_6/Tab 6_8 - Verbindung und Umstieg.mp3',
          'App/Lektion_6/Tab 6_9 - Abfahrt und Ankunft.mp3',
          'App/Lektion_6/Tab 6_10 - Verspätung und Ausfall.mp3',
          'App/Lektion_6/Tab 6_11 - Ankunftszeit und Verspätung.mp3',
          'App/Lektion_6/Tab 6_12 - Zimmer buchen.mp3',
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