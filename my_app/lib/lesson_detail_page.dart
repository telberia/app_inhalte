import 'package:flutter/material.dart';
import 'lesson.dart';
import 'pdf_viewer_page.dart';
import 'audio_player_widget.dart';

class LessonDetailPage extends StatefulWidget {
  final Lesson lesson;
  const LessonDetailPage({super.key, required this.lesson});

  @override
  _LessonDetailPageState createState() => _LessonDetailPageState();
}

class _LessonDetailPageState extends State<LessonDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.lesson.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              widget.lesson.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Xem PDF'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfViewerPage(pdfUrl: widget.lesson.pdfUrl),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            if (widget.lesson.audioUrls.isNotEmpty)
              ...widget.lesson.audioUrls.map((audio) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Audio: ${audio.split('/').last}'),
                    AudioPlayerWidget(audioUrl: audio),
                  ],
                ),
              )),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.ondemand_video),
              label: const Text('Phát video'),
              onPressed: () {
                // TODO: Phát video
              },
            ),
          ],
        ),
      ),
    );
  }
} 