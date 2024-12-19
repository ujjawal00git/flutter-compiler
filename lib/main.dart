import 'package:flutter/material.dart';
import 'package:printing/printing.dart';  // Correct import for PdfPageFormat
import 'resume.dart';  // Import the resume generation function

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume Viewer'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Generate the resume PDF
            final pdf = await generateResumePdf();

            // Use the Printing package to display the PDF
            await Printing.layoutPdf(
              onLayout: (format) async => pdf.save(),  // Using anonymous function for PdfPageFormat
            );
          },
          child: Text('View Resume PDF'),
        ),
      ),
    );
  }
}
