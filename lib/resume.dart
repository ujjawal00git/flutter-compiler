import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Document> generateResumePdf() async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Ujjawal Shiv', style: pw.TextStyle(fontSize: 24)),
            pw.SizedBox(height: 10),
            pw.Text('Flutter Developer', style: pw.TextStyle(fontSize: 18)),
            pw.SizedBox(height: 20),
            pw.Text('Education', style: pw.TextStyle(fontSize: 16)),
            pw.Bullet(text: 'B.Tech in Computer Science'),
            pw.Bullet(text: 'CGPA: 7.91'),
            pw.SizedBox(height: 20),
            pw.Text('Skills', style: pw.TextStyle(fontSize: 16)),
            pw.Bullet(text: 'Flutter, Firebase, Dart'),
            pw.Bullet(text: 'C/C++, Machine Learning'),
            pw.SizedBox(height: 20),
            pw.Text('Experience', style: pw.TextStyle(fontSize: 16)),
            pw.Bullet(text: 'Developed cross-platform apps using Flutter'),
            pw.Bullet(text: 'Implemented backend with Firebase'),
          ],
        );
      },
    ),
  );

  return pdf;
}
