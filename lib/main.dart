import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          top: true,
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/a/a1/Dominic_Fike_-_Mona_Lisa.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.00, 0.00),
                  ),
                ),
              ),
            ),
            // Generated code for this Text Widget...
            const Align(
              alignment: AlignmentDirectional(0.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: Text(
                  'Mona Lisa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const Text(
              'Dominic Fike',
              style: TextStyle(
                color: Color(0xFF5E5C5C),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xFFFF0000),
                      size: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Icon(
                      Icons.skip_previous_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Icon(
                      Icons.skip_next_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: Icon(
                      Icons.repeat,
                      color: Color(0xFF5E5C5C),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
