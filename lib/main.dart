import 'package:flutter/material.dart';



void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double x = 0;
  double y = 0;
  double result = 0;

  TextEditingController xEditingController = TextEditingController();
  TextEditingController yEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),

      body: Center(

        child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //入力Box1
                  Container(
                    width: 130,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: TextField(
                      controller: xEditingController,
                      decoration: InputDecoration(border: OutlineInputBorder(),),
                     ),
                    ),
                  //入力Box2
                  Container(
                    width: 130,
                    height: 60,
                    margin: EdgeInsets.all(30),
                    child: TextField(
                      controller: yEditingController,
                      decoration: InputDecoration(border: OutlineInputBorder(),),
                    ),
                  ),
                  //計算結果
                  Text(
                    '結果：$result',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //＋ボタン
                  ElevatedButton(
                    onPressed: (){
                      setState((){
                        x = double.parse(xEditingController.text);
                        y = double.parse(yEditingController.text);
                        result = x + y;
                      });
                    },
                    child: const Text('+', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                    ),
                  ),
                  const SizedBox(width: 30,),
                  //−ボタン
                  ElevatedButton(
                    onPressed: (){
                      setState((){
                        x = double.parse(xEditingController.text);
                        y = double.parse(yEditingController.text);
                        result =  x - y;
                      });
                    },
                    child: const Text('-', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                    ),
                  ),
                  const SizedBox(width: 30,),
                  //×ボタン
                  ElevatedButton(
                    onPressed: (){
                      setState((){
                        x = double.parse(xEditingController.text);
                        y = double.parse(yEditingController.text);
                        result = x * y;
                      });
                    },
                    child: const Text('×', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                    ),
                  ),
                  const SizedBox(width: 30,),
                  //÷ボタン
                  ElevatedButton(
                    onPressed: (){
                      setState((){
                        x = double.parse(xEditingController.text);
                        y = double.parse(yEditingController.text);
                        result = x / y;
                      });
                    },
                    child: const Text('÷', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                    ),
                  ),
                  const SizedBox(width: 30,),
                ],
              ),
           ],// trailing comma makes auto-formatting nicer for build methods.
          ),
      ),
    );
  }
}
