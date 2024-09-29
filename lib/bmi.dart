import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(sliderTheme: SliderThemeData(showValueIndicator: ShowValueIndicator.always),
        primarySwatch: Colors.blue,
      ),
      home: UserInputPage(),
    );
  }
}

class UserInputPage extends StatefulWidget {
  @override
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  String gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      gender = 'Male';
                    });
                  },
                  child: Text('Male'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: gender == 'Male' ? Colors.blue : Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      gender = 'Female';
                    });
                  },
                  child: Text('Female'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: gender == 'Female' ? Colors.pink : Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    heightController.text.isNotEmpty &&
                    weightController.text.isNotEmpty &&
                    gender.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        name: nameController.text,
                        height: double.parse(heightController.text),
                        weight: double.parse(weightController.text),
                        gender: gender,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please fill all fields'),
                  ));
                }
              },
              child: Text('Calculate BMI'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  final String name;
  final double height;
  final double weight;
  final String gender;

  ResultPage(
      {required this.name, required this.height, required this.weight, required this.gender});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late double bmi;

  @override
  void initState() {
    super.initState();
    bmi = widget.weight / ((widget.height / 100) * (widget.height / 100));

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: bmi).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String prefix = widget.gender == 'Male' ? 'Mr.' : 'Mrs.';

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$prefix ${widget.name}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'BMI: ${_animation.value.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red,Colors.yellow,Colors.green,Colors.yellow,Colors.red])),
              child: Slider(
                value: _animation.value,
                min: 0,
                max: 50,
                label: _animation.value.toStringAsFixed(2),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
