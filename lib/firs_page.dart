import 'package:flutter/material.dart';
import 'package:untitled7/second_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(mainAxisAlignment:MainAxisAlignment.center,
            children: [IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add)),
              IconButton(
                  onPressed: _nextPage, icon: Icon(Icons.chevron_right))
            ],
          ),
        ],
      ),

    );
  }

  Future<void>  _nextPage() async{
 final bool? boOl =   await Navigator.push<bool?>(
      context,
      MaterialPageRoute(builder: (_) => SecondPage()),);

setState(() {
  if(boOl == true){
    _counter = 1;
  }else if(boOl == false){
    _counter = -1 ;
  }else{}
});
  }

}
