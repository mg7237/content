import 'package:content/video_example_complex.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'hero.dart';
import 'video_example.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Content View Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SizedBox heightBox = const SizedBox(height: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: const Text(
                'View Image',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HeroExample(),
                  ),
                );
              },
            ),
            heightBox,
            InkWell(
                child: const Text(
                  'View Video',
                ),
                onTap: () {
                  // SystemChrome.setPreferredOrientations(
                  //     [DeviceOrientation.landscapeRight]).then((_) {
                  //   runApp(VideoApp());
                  // });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VideoComplex(),
                    ),
                  );
                }),
            heightBox,
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (_) => HeroExample(),
      //       ),
      //     );
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
