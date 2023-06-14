import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState(){
    _pdfViewerController = PdfViewerController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("معلومات در باره برنامه"),
          centerTitle: true,
          elevation: 0,
          ),
      body: SfPdfViewer.asset("assets/pdf/my.pdf",
      controller: _pdfViewerController,),
    ));
  }
}
