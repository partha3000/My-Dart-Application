import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(ScientificCalculatorApp());

class ScientificCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scientific Calculator',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: ScientificCalculator(),
    );
  }
}

class ScientificCalculator extends StatefulWidget {
  @override
  _ScientificCalculatorState createState() => _ScientificCalculatorState();
}

class _ScientificCalculatorState extends State<ScientificCalculator> {
  String _expression = '';
  String _result = '';

  void _onPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _expression = '';
        _result = '';
      } else if (buttonText == 'DEL') {
        _expression = _expression.isNotEmpty ? _expression.substring(0, _expression.length - 1) : '';
      } else if (buttonText == '=') {
        try {
          _result = _evaluateExpression(_expression);
        } catch (e) {
          _result = 'Error';
        }
      } else {
        _expression += buttonText;
      }
    });
  }

  String _evaluateExpression(String expr) {
    // Simple parser — very basic (no full expression parsing)
    if (expr.contains('sin')) {
      final val = double.parse(expr.replaceAll('sin', ''));
      return math.sin(_toRadians(val)).toStringAsFixed(6);
    } else if (expr.contains('cos')) {
      final val = double.parse(expr.replaceAll('cos', ''));
      return math.cos(_toRadians(val)).toStringAsFixed(6);
    } else if (expr.contains('tan')) {
      final val = double.parse(expr.replaceAll('tan', ''));
      return math.tan(_toRadians(val)).toStringAsFixed(6);
    } else if (expr.contains('log')) {
      final val = double.parse(expr.replaceAll('log', ''));
      return math.log(val).toStringAsFixed(6);
    } else if (expr.contains('√')) {
      final val = double.parse(expr.replaceAll('√', ''));
      return math.sqrt(val).toStringAsFixed(6);
    } else if (expr.contains('^')) {
      final parts = expr.split('^');
      final base = double.parse(parts[0]);
      final exp = double.parse(parts[1]);
      return math.pow(base, exp).toStringAsFixed(6);
    } else {
      return _basicMath(expr).toString();
    }
  }

  double _toRadians(double degree) => degree * math.pi / 180;

  double _basicMath(String expr) {
    // Extremely simplified: only handles single operations like 3+4
    if (expr.contains('+')) {
      final parts = expr.split('+');
      return double.parse(parts[0]) + double.parse(parts[1]);
    } else if (expr.contains('-')) {
      final parts = expr.split('-');
      return double.parse(parts[0]) - double.parse(parts[1]);
    } else if (expr.contains('*')) {
      final parts = expr.split('*');
      return double.parse(parts[0]) * double.parse(parts[1]);
    } else if (expr.contains('/')) {
      final parts = expr.split('/');
      return double.parse(parts[0]) / double.parse(parts[1]);
    }
    return double.tryParse(expr) ?? 0.0;
  }

  Widget _buildButton(String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _onPressed(text),
        child: Text(text, style: TextStyle(fontSize: 22)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scientific Calculator")),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            child: Text(_expression, style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(_result, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Divider()),
          Column(children: [
            Row(children: [_buildButton('7'), _buildButton('8'), _buildButton('9'), _buildButton('/')]),
            Row(children: [_buildButton('4'), _buildButton('5'), _buildButton('6'), _buildButton('*')]),
            Row(children: [_buildButton('1'), _buildButton('2'), _buildButton('3'), _buildButton('-')]),
            Row(children: [_buildButton('0'), _buildButton('.'), _buildButton('='), _buildButton('+')]),
            Row(children: [_buildButton('sin'), _buildButton('cos'), _buildButton('tan'), _buildButton('^')]),
            Row(children: [_buildButton('log'), _buildButton('√'), _buildButton('DEL'), _buildButton('C')]),
          ]),
        ],
      ),
    );
  }
}
