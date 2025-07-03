import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'dart:developer' as developer;

class PdfViewerPage extends StatefulWidget {
  final String pdfUrl;
  const PdfViewerPage({super.key, required this.pdfUrl});

  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  late PdfControllerPinch _pdfController;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  void _initPdf() {
    developer.log('Attempting to load PDF from assets: ${widget.pdfUrl}');
    _pdfController = PdfControllerPinch(
      document: PdfDocument.openAsset(widget.pdfUrl),
    );
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xem PDF'),
      ),
      body: Stack(
        children: [
          if (_errorMessage != null)
            Container(
              color: Colors.red[100],
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.error_outline, color: Colors.red),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Lỗi: $_errorMessage\nĐường dẫn: ${widget.pdfUrl}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          Positioned.fill(
            child: PdfViewPinch(
              controller: _pdfController,
              onDocumentError: (error) {
                developer.log('PDF load failed: $error', error: error);
                setState(() {
                  _errorMessage = error.toString();
                });
              },
              builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                options: const DefaultBuilderOptions(
                  loaderSwitchDuration: Duration(seconds: 1),
                ),
                documentLoaderBuilder: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                pageLoaderBuilder: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorBuilder: (_, error) => Center(
                  child: Text(error.toString()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 