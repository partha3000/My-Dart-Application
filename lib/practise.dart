import 'dart:io';

void main () {
  print('Hello, Dart program');

  stdout.write('Enter your name:');

  var name = stdin.readLineSync();

  print("Welcome, $name");

  Home(); // create an new class object
}

class Home {

}