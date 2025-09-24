import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleWidget(),
    );
  }
}

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);
  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}
class _ExampleWidgetState extends State<ExampleWidget> {
  final TextEditingController _controller = TextEditingController();






@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Center(
            child: Card(
              child: Column(
                children: [
                  //https://flutter-website-staging.firebaseapp.com/text-input/
                  TextField(
                    controller: _controller,

                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: const Text('CONTAINED BUTTON'),
                  )
                ],
              ),
            ),
          ),
      ),

    );
  }
}