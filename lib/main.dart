
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
  //https://stackoverflow.com/questions/65050810/how-to-count-number-of-words-in-a-text-string-from-user-input
  int words_num = 0;
  void countWords(){
    var regExp = new RegExp(r"\w+(\'\w+)?");
    int wordscount = regExp.allMatches(_controller.text).length;
    setState(() {
      words_num = wordscount;
    });
  }
  //https://regex101.com/
  int symbol_num = 0;
  void countSymbols(){
    var regExp = new RegExp(r"\w");
    int Symbolscount = regExp.allMatches(_controller.text).length;
    setState(() {
      symbol_num = Symbolscount;
    });
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Center(
            child: Card(
              child: Column(
                //https://docs.flutter.dev/ui/layout
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //https://flutter-website-staging.firebaseapp.com/text-input/
                  //https://stackoverflow.com/questions/57795589/flutter-using-editabletext
                  // https://api.flutter.dev/flutter/painting/TextStyle-class.html
                  Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                      'Number of words: $words_num'
                  ),
                  SizedBox(height: 40,),
                  Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                    'Number of symbols: $symbol_num'
                  ),
                  TextField(
                    controller: _controller,

                  ),
                  //https://api.flutter.dev/flutter/widgets/SizedBox-class.html
                  SizedBox(height: 20),
                  //https://api.flutter.dev/flutter/material/ButtonStyle-class.html
                  ElevatedButton(
                    onPressed: () {
                      countWords();
                    },
                    //Chat GPT : "how to change size of elevated button in flutter dart using ButtonStyle"
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(60, 70)),
                    ),
                    child: const Text('Count Words'),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(60, 70)),
                      ),
                      onPressed: (){
                        countSymbols();
                      },
                      child: const Text('Count Symbols'),
                  )
                ],
              ),
            ),
          ),
      ),

    );
  }
}