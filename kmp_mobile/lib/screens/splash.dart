import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kmp_mobile/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: kPrimaryColor,
        // centerTitle: true,
      )),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageDecoration = PageDecoration(
    titleTextStyle:
        PageDecoration().titleTextStyle.copyWith(color: Colors.blue),
    bodyTextStyle:
        PageDecoration().bodyTextStyle.copyWith(color: Color(0xff9a896f)),
    contentPadding: const EdgeInsets.all(10),
  );

  List<PageViewModel> getPages() {
    return [
    
       PageViewModel(
        body: "Kitunga mon panier",
        title: "",
        decoration: PageDecoration(
          pageColor: kPrimaryBtnColor,
          
          bodyTextStyle: TextStyle(
            color: Colors.white,
          )
        )

      ),
      PageViewModel(
          image: Image.asset(
            'assets/Splash-image.png',
          ),
          title: "Avec Kitunga Mon Panier",
          body:
              "Sentez-vous libre de payer tout ce que vous voulez car vous detenez tout le pouvoir dans votre pôche.Il vous suffit de faire un clic, et vous avez ce qu’il vous faut, quand il vous faut, et où il le faut.",
          footer: RaisedButton(
            color: kPrimaryBtnColor,
            onPressed: () async {
              // On button presed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: const Text(
              "Lancez-vous !",
              style: TextStyle(
              color: Colors.white, 
              fontSize: 15.00,
              ),
              
            ),
          ))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          '',
          style: TextStyle(color: kPrimaryColor, fontSize: 15.0),
        ),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
      ),
    );
  }
}
