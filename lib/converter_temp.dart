import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Temperrature extends StatefulWidget {
  @override
  State<Temperrature> createState() => _Temperrature();
}

class _Temperrature extends State<Temperrature> {
  final _controller = TextEditingController();
  var _feedbacktext = "";
  var _showtestbutton = false;
  var CeltoFah;
  var CeltoKel;
  var FahtoCel;
  var FahtoKel;
  var KeltoCel;
  var KeltoFah;

  void CelsiustoFahrenheit() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var temp = double.tryParse(_controller.text);

    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Please enter value to convert.';
      });
    } else {
      CeltoFah = ((9 / 5) * temp) + 32;
      setState(() {
        _feedbacktext = '$temp Celsius =  $CeltoFah Fahrenheit';
      });
    }
  }

  void CelsiustoKelvin() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var temp = double.tryParse(_controller.text);

    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Please enter value to convert.';
      });
    } else {
      CeltoKel = (temp + 273);
      setState(() {
        _feedbacktext = '$temp Celsius =  $CeltoKel Kelvin';
      });
    }
  }

  void FahrenheittoCelsius() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var temp = double.tryParse(_controller.text);

    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Please enter value to convert.';
      });
    } else {
      FahtoCel = (5 / 9) * (temp - 32);
      setState(() {
        _feedbacktext = '$temp Fahrenheit =  $FahtoCel Celsius';
      });
    }
  }

  void FahrenheittoKelvin() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var temp = double.tryParse(_controller.text);

    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Please enter value to convert.';
      });
    } else {
      FahtoKel = 5 / 9 * (temp - 32) + 273.15;
      setState(() {
        _feedbacktext = '$temp Fahrenheit =  $FahtoKel Kelvin';
      });
    }
  }

  void KelvintoCelsius() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var temp = double.tryParse(_controller.text);

    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Please enter value to convert.';
      });
    } else {
      KeltoCel = temp - 273;
      setState(() {
        _feedbacktext = '$temp Kelvin =  $KeltoCel Celsius';
      });
    }
  }

  void KelvintoFahrenheit() {
    setState(() {
      _showtestbutton = !_showtestbutton;
    });
    print(_controller.text);
    var temp = double.tryParse(_controller.text);

    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbacktext = 'Please enter value to convert.';
      });
    } else {
      KeltoFah = 9 / 5 * (temp - 273) + 32;
      setState(() {
        _feedbacktext = '$temp Kelvin =  $KeltoFah Fahrenheit';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Midterm Temperature")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter a temperature value to convert",
              ),
            ),
            ElevatedButton(
              onPressed: CelsiustoFahrenheit,
              child: Text("Celsius to Fahrenheit"),
            ),
            ElevatedButton(
              onPressed: CelsiustoKelvin,
              child: Text("Celsius to Kelvin"),
            ),
            ElevatedButton(
              onPressed: FahrenheittoCelsius,
              child: Text("Fahrenheit to Celsius"),
            ),
            ElevatedButton(
              onPressed: FahrenheittoKelvin,
              child: Text("Fahrenheit to Kelvin"),
            ),
            ElevatedButton(
              onPressed: KelvintoCelsius,
              child: Text("Kelvin to Celsius"),
            ),
            ElevatedButton(
              onPressed: KelvintoFahrenheit,
              child: Text("Kelvin to Fahrenheit"),
            ),
            Text(_feedbacktext),
          ],
        ),
      ),
    );
  }
}