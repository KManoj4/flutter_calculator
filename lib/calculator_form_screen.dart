import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final _enterFirstNumberTxtCnt = TextEditingController();
  final _enterSecondNumberTxtCnt = TextEditingController();
  final  _resultController = TextEditingController();

  void _add() {
    double value1 = double.tryParse(_enterFirstNumberTxtCnt.text) ?? 0.0;
    double value2 = double.tryParse(_enterSecondNumberTxtCnt.text) ?? 0.0;

    double result = value1 + value2;

    // Update the result text field
    _resultController.text = result.toString();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              TextField(
                controller: _enterFirstNumberTxtCnt,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter First Number',
                  labelText: 'First Number',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _enterSecondNumberTxtCnt,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Second Number',
                  labelText: 'Second Number',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _add();
                },
                child: Text(
                  'Add',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _resultController,
                readOnly: true,
                decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: 'Result',
                    labelText: 'Result'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
