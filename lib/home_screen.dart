import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberOneTEcontroller = TextEditingController();
  final TextEditingController _numberTwoTEcontroller = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum App'),
        leading: Icon(Icons.calculate_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _numberOneTEcontroller,
              decoration: InputDecoration(
                hint: Text('input first number'),
                label: Text('Number 1'),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _numberTwoTEcontroller,
              decoration: InputDecoration(
                hint: Text('input second Number'),
                label: Text('Number 2'),
              ),
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    _add();
                  },
                  label: Text('Add'),
                  icon: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _sub();
                  },
                  label: Text('Sub'),
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    _mult();
                  },
                  label: Text('Mult'),
                  icon: Icon(Icons.close),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _div();
                  },
                  label: Text('Div'),
                  icon: Icon(Icons.stars_outlined),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                ),
              ],
            ),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){_reset();}, child: Text('Reset')),
            SizedBox(height: 50),
            Text('Result= $_result'),
          ],
        ),
      ),
    );
  }

  void _add() {
    double numberOne = double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub() {
    double numberOne = double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result = numberOne - numberTwo;
    setState(() {});
  }

  void _mult() {
    double numberOne = double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result = numberOne * numberTwo;
    setState(() {});
  }

  void _div() {
    double numberOne = double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result = numberOne / numberTwo;
    setState(() {});
  }

  void _reset(){
    _result=0;
    setState(() {

    });

  }

}
