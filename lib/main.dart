import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int sum = 0;
  int difference = 0;
  int product = 0;
  int quotient = 0;

  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController minus1Controller = TextEditingController();
  TextEditingController minus2Controller = TextEditingController();
  TextEditingController multiply1Controller = TextEditingController();
  TextEditingController multiply2Controller = TextEditingController();
  TextEditingController divide1Controller = TextEditingController();
  TextEditingController divide2Controller = TextEditingController();

  void calculateSum() {
    setState(() {
      int firstAddNum = int.tryParse(add1Controller.text) ?? 0;
      int secondAddNum = int.tryParse(add2Controller.text) ?? 0;
      sum = firstAddNum + secondAddNum;
    });
  }

  void calculateDifference() {
    setState(() {
      int firstMinusNum = int.tryParse(minus1Controller.text) ?? 0;
      int secondMinusNum = int.tryParse(minus2Controller.text) ?? 0;
      difference = firstMinusNum - secondMinusNum;
    });
  }

  void calculateProduct() {
    setState(() {
      int firstMultiplyNum = int.tryParse(multiply1Controller.text) ?? 0;
      int secondMultiplyNum = int.tryParse(multiply2Controller.text) ?? 0;
      product = firstMultiplyNum * secondMultiplyNum;
    });
  }

  void calculateQuotient() {
    setState(() {
      int firstDivideNum = int.tryParse(divide1Controller.text) ?? 0;
      int secondDivideNum = int.tryParse(divide2Controller.text) ?? 0;
      quotient = firstDivideNum ~/ secondDivideNum;
    });
  }

// Activity No. 3.b
  void clearAddFields() {
    setState(() {
      // Clear input fields
      add1Controller.clear();
      add2Controller.clear();

      // Reset Sum to 0
      sum = 0;
    });
  }

  void clearSubtractFields() {
    setState(() {
      // Clear input fields
      minus1Controller.clear();
      minus2Controller.clear();

      // Reset Difference to 0
      difference = 0;
    });
  }

  void clearMultiplyFields() {
    setState(() {
      // Clear input fields
      multiply1Controller.clear();
      multiply2Controller.clear();

      // Reset Product to 0
      product = 0;
    });
  }

  void clearDivideFields() {
    setState(() {
      // Clear input fields
      divide1Controller.clear();
      divide2Controller.clear();

      // Reset Quotient to 0
      quotient = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: 400, //Fixed Width
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Addition Row
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: add1Controller,
                      decoration: const InputDecoration(labelText: "First"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("+"),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: add2Controller,
                      decoration: const InputDecoration(labelText: "Second"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 8),

                  IconButton(
                    icon: const Icon(Icons.calculate),
                    onPressed: calculateSum,
                  ),

                  Text('= $sum'),
                  const SizedBox(width: 8),

                  ElevatedButton(
                    onPressed: clearAddFields,
                    child: const Text("Clear"),
                  ),
                ],
              ),


              const SizedBox(height: 16.0),

              // Subtraction Row
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: minus1Controller,
                      decoration: const InputDecoration(labelText: "First"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("-"),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: minus2Controller,
                      decoration: const InputDecoration(labelText: "Second"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 8),

                  IconButton(
                    icon: const Icon(Icons.calculate),
                    onPressed: calculateDifference,
                  ),
                  Text('= $difference'),

                  const SizedBox(width: 8),
                  
                  ElevatedButton(
                    onPressed: clearSubtractFields,
                    child: const Text("Clear"),
                  ),
                ],
              ),

              const SizedBox(height: 16.0),

              // Multiplication Row
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: multiply1Controller,
                      decoration: const InputDecoration(labelText: "First"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("×"),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: multiply2Controller,
                      decoration: const InputDecoration(labelText: "Second"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 8),

                  IconButton(
                    icon: const Icon(Icons.calculate),
                    onPressed: calculateProduct,
                  ),
                  Text('= $product'),

                  const SizedBox(width: 8),
                  
                  ElevatedButton(
                    onPressed: clearMultiplyFields,
                    child: const Text("Clear"),
                  ),
                ],
              ),

              const SizedBox(height: 16.0),

              // Division Row
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: divide1Controller,
                      decoration: const InputDecoration(labelText: "First"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("÷"),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      controller: divide2Controller,
                      decoration: const InputDecoration(labelText: "Second"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 8),

                  IconButton(
                    icon: const Icon(Icons.calculate),
                    onPressed: calculateQuotient,
                  ),
                  Text('= $quotient'),

                  const SizedBox(width: 8),
                  
                  ElevatedButton(
                    onPressed: clearDivideFields,
                    child: const Text("Clear"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
