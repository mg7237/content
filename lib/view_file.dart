import 'package:flutter/material.dart';
import 'web_view_example.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:math';

class ViewFile extends StatefulWidget {
  const ViewFile({Key? key}) : super(key: key);

  @override
  State<ViewFile> createState() => _ViewFileState();
}

class _ViewFileState extends State<ViewFile> {
  SizedBox heightBox = const SizedBox(height: 50);
  String pptFilePath = 'https://acdbio.com/sites/default/files/sample.ppt';
  String excelFilePath = 'https://go.microsoft.com/fwlink/?LinkID=521962';
  String docFilePath =
      'https://www.learningcontainer.com/sample-docx-file-for-testing/#';

  String localPath = '';
  late Directory dir;
  bool downloadComplete = false;
  @override
  void initState() {
    super.initState();
    init();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  init() async {
    dir = await getApplicationDocumentsDirectory();
  }

  Future<void> _downloadFile(
      {required String url, required String fileType}) async {
    localPath = '';

    List<int> bytes = [];
    try {
      final request = Request('GET', Uri.parse(url));
      StreamedResponse response = await Client().send(request);
      final contentLength = response.contentLength;

      var random = Random();
      String fileName = random.nextInt(9999999).toString();
      localPath = "${dir.path}/$fileName.$fileType";

      response.stream.listen(
        (List<int> newBytes) {
          bytes.addAll(newBytes);
          // final downloadedLength = bytes.length;
          // setState(() {
          //   double _dblLength = (contentLength ?? 0).toDouble();
          //   // _contentBytes[downloadFileName] = Map();
          //   // _contentBytes[downloadFileName]["LENGTH"] =
          //   //     (_dblLength / 10).round() / 100.0;
          //   // _contentBytes[downloadFileName]["DOWNLOADED"] =
          //   //     (downloadedLength / 10).round() / 100.0;
          // });
        },
        onDone: () async {
          var file = File(localPath);
          await file.writeAsBytes(bytes);
          downloadComplete = true;
          setState(() {});
        },
        onError: (e) {
          print("Error while downloading file: ${e.toString}");
        },
        cancelOnError: true,
      );
    } catch (e) {
      print("Error while downloading file: ${e.toString}");
      downloadComplete = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Files')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                child: const Text(
                  'View PPT - Network',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WebViewExample(pptFilePath),
                      ));
                }),
            heightBox,
            InkWell(
              child: const Text(
                'View Excel - Network',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WebViewExample(excelFilePath),
                    ));
              },
            ),
            heightBox,
            InkWell(
              child: const Text(
                'View Word - Network',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WebViewExample(docFilePath),
                    ));
              },
            ),
            heightBox,
            InkWell(
                child: const Text(
                  'View PPT - Download',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () async {
                  try {
                    await _downloadFile(url: pptFilePath, fileType: 'pptx');
                    print('localPath $localPath');
                    if (localPath != '') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => WebViewExample(localPath),
                          ));
                      print('SUCCCCESSSS');
                    } else {
                      print('FAILLLLL');
                    }
                  } catch (e) {
                    print('failed, error: ${e.toString()}');
                  }
                }),
            heightBox,
          ],
        ),
      ),
    );
  }
}
