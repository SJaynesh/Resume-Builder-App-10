import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PDFViewPage extends StatefulWidget {
  const PDFViewPage({super.key});

  @override
  State<PDFViewPage> createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  Future<Uint8List> pdfView() async {
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Text("Hello Programming");
        },
      ),
    );
    return await pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RESUME",
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
      ),
      body: PDFViewPage(),
    );
  }
}
