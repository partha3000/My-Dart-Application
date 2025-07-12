

void main () {
  print("Wel-come to Dart"); //String name = "RAM";
  // Var and Dynamic
  // Var
  //var Love; Love = 'Ram'; print(Love); Love = 20; print(Love);

  // The Function use
  // var myClass = myPrintCode();
  // myClass.myData('name');
  //
  // myClass.myNumber(57);
  //
  // myClass.myData('pm');
  //
  // print(myClass.Add(10,11));


  //List of Dart program

  var listNo = [10, 20, 30, 40];

  listNo.add(50); // Add the Element//
  print(listNo);
  //listNo.removeAt(2);

  print("$listNo");

  print("Length: ${listNo.length}");
  print("Reversed: ${listNo.reversed}");
  print("First: ${listNo.first}");
  print("Last: ${listNo.last}");
  print("isEmpty: ${listNo.isEmpty}");
  print('isNotEmpty: ${listNo.isNotEmpty}');
  print('2nd IndexElement: ${listNo.elementAt(2)}');

}

// class myPrintCode {
//
//   myPrintCode () { // Defaults Constructor
//     print('my Class object is  create');
//   }
//
//   void myData (String name) {
//     print(name);
//   }
//
//   void myNumber (int num){
//     print(num);
//   }
//
//   int Add (int n1, int n2){
//     int sum =  n1 + n2;
//     return sum;
//
//   }
//
// }