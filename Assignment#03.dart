import 'dart:io';

void main() {
  print("Question No#01");
  print(
      "=======================================================================================");
  List<int> numberlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List getnumber = evennumber(numberlist);
  print("Original List: $numberlist");
  print("Even Number in The List: $getnumber");

  print(
      "=======================================================================================");
  print("Question No#02");
  int Fibonaccinumber = 10;
  printFibonacci(n: Fibonaccinumber);
  print(
      "=======================================================================================");

  print("Question No#03");
  int inputNumber = 17;
  if (isPrime(inputNumber)) {
    print('$inputNumber is a prime number.');
  } else {
    print('$inputNumber is not a prime number.');
  }
  print(
      "=======================================================================================");
  print("Question No#04");
  int numbertofactor = 5;
  print(
      "The Factorial of $numbertofactor is: ${getfactorialnumber(number: numbertofactor)}");
  print(
      "=======================================================================================");

  print("Question No#05");
  List<int> forsum = [1, 2, 3, 4, 5];
  print("The sum of All Digits ${sumofdigits(number: forsum)}");
  print(
      "=======================================================================================");

  print("Question No#06");
  List<int> forfind = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  print(
      "Printing the Largest Element From the List: ${getlargestelement(number: forfind)}");
  print(
      "=======================================================================================");

  print("Question No#07");
  int fortable = 5;
  print("Printing the Table of $fortable");
  tablenumber(number: 5);
  print(
      "=======================================================================================");

  print("Question No#09");
  checkpalindrome(check: "radar");
  print(
      "=======================================================================================");

  print("Question No#10");
  displaycube(number: 5);
  print(
      "=======================================================================================");

  print("Question No#11");
  String triangle = "asterisk";
  gettriangle(Which_Triangle: triangle);
  print(
      "=======================================================================================");

  print("Question No#12");
  printNumberTriangle(4);
  print(
      "=======================================================================================");

  print("Question No#13");
  printRepetedNumberTriangle(4);
  print(
      "=======================================================================================");

  print("Question No#14");
  printIncreasedNumberTriangle(4);
  print(
      "=======================================================================================");

  print("Question No#15");
  printNumberPyramid(4);
  print(
      "=======================================================================================");

  print("Question No#16");
  getpyramidtriangle();
  print(
      "=======================================================================================");

  print("Question No#17");
  emailpassword();
  print(
      "=======================================================================================");

  print("Question No#18");
  listemailpassword();

  print(
      "=======================================================================================");

  print("Question No#19");

  print("Enter the list of numbers separated by space:");
  String input = stdin.readLineSync()!;

  List<String> numberStrings = input.split(' ');

  for (int i = 0; i < numberStrings.length; i++) {
    int number = int.parse(numberStrings[i]);

    if (number > 5) {
      print("Your $number is Greater than 5");
    }
  }

  print(
      "=======================================================================================");

  print("Question No#20");

  String forvowels = 'GLUE';
  int vovelcounts = countvovels(forvowels);
  print("Number Vovels in a Given String $forvowels is: $vovelcounts");

  print(
      "=======================================================================================");

  print("Question No#21");
  List<int> forchecknumbers = [3, 7, 2, 9, 1, 5];
  findelements(numbers: forchecknumbers);

  print(
      "=======================================================================================");

  print("Question No#22");
  List<int> numforsquares = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int sumofsquares = 0;

  for (int i = 0; i < numforsquares.length; i++) {
    int number = numforsquares[i];
    if (number % 2 != 0) {
      sumofsquares += (number * number);
    }
  }

  print("Sum of Squares: $sumofsquares");

  print(
      "=======================================================================================");

  print("Question No#23");

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  for (Map<String, dynamic> students in studentDetails) {
    String name = students['name'];
    List<int> marks = List<int>.from(students['marks']);
    int totalMarks = marks.length * 100;
    int sumOfMarks = marks.reduce((a, b) => a + b);

    double averageScore = (sumOfMarks / totalMarks * 100);
    // Grade //
    String grade;
    if (averageScore >= 90) {
      grade = 'A';
    } else if (averageScore >= 80) {
      grade = 'B';
    } else if (averageScore >= 70) {
      grade = 'C';
    } else if (averageScore >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }
    // Print the Name of Student and Grade //
    print("Student: $name, Grade: $grade");
  }

  print(
      "=======================================================================================");

  print("Question No#24");
  List<int> fornegcheck = [1, -2, 0, 9, -10, -8, -5, -4, -9, 5, -3];
  findnegativenum(numbers: fornegcheck);

  print(
      "=======================================================================================");

  print("Question No#25");
  List<int> num_input = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> primes = [];

  for (int i = 0; i < num_input.length; i++) {
    int number = num_input[i];
    if (isPrime(number)) {
      primes.add(number);
    }
  }
  print("The Original List: $num_input");
  print("New List of Prime numbers: $primes");

  print(
      "=======================================================================================");
}

evennumber(List<int> numbers) {
  List<int> numbereven = [];

  for (int i = 0; i < numbers.length; i++) {
    int number = numbers[i];
    if (number % 2 == 0) {
      numbereven.add(number);
    }
  }
  return numbereven;
}

void printFibonacci({required int n}) {
  int first = 0;
  int second = 1;
  print("Fibonacci Numbers upto $n");
  for (int i = 0; first <= n; i++) {
    print(first);
    int next = first + second;
    first = second;
    second = next;
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

getfactorialnumber({required int number}) {
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}

int sumofdigits({required List<int> number}) {
  int sum = 0;
  int digit = 0;
  while (digit < number.length) {
    sum += number[digit];
    digit++;
  }
  return sum;
}

int getlargestelement({required number}) {
  int largest = number[0];
  for (int i = 0; i < number.length; i++) {
    if (number[i] > largest) {
      largest = number[i];
    }
  }
  return largest;
}

void tablenumber({required number}) {
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}

void checkpalindrome({required String check}) {
  if (check[0] == check[check.length - 1]) {
    print(" $check is a Palindrome");
  } else {
    print("$check is not a Palindrome");
  }
}

void displaycube({required number}) {
  for (int i = 1; i <= number; i++) {
    int cubes = i * i * i;
    print("Number is : $i and cube of the $i is : $cubes");
  }
}

void gettriangle({required String Which_Triangle}) {
  if (Which_Triangle == "asterisk") {
    for (int i = 0; i < 1; i++) {
      print("Right Angle Triangle Pattern");
      print("*");
      print("**");
      print("***");
      print("****");
    }
  }
}

void printNumberTriangle(int number) {
  for (int i = 1; i <= number; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += '$j ';
    }
    print(row);
  }
}

void printRepetedNumberTriangle(int number) {
  for (int i = 1; i <= number; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += '$i ';
    }
    print(row);
  }
}

void printIncreasedNumberTriangle(int number) {
  int num = 1;
  for (int i = 1; i <= number; i++) {
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += '$num ';
      num++;
    }
    print(row);
  }
}

void printNumberPyramid(int number) {
  int num = 1;
  for (int i = 1; i <= number; i++) {
    String spaces = ' ' * (number - i); // Adding spaces before the numbers
    String row = '';
    for (int j = 1; j <= i; j++) {
      row += '$num ';
      num++;
    }
    print('$spaces$row');
  }
}

void getpyramidtriangle() {
  print("Pyramid");
  print("      * ");
  print("     * * ");
  print("    * * * ");
  print("  * * * * *");
  print(" * * * * * *");
}

emailpassword() {
  bool emailpasswordmatching = true;
  String email = "Saylani@gmail.com";
  String password = "Saylani12345";
  while (emailpasswordmatching == true) {
    stdout.write("Enter Your Email: ");
    String? gettedemail = stdin.readLineSync();
    stdout.write("Enter Your Password: ");
    String? gettedpassword = stdin.readLineSync();

    if (email == gettedemail && password == gettedpassword) {
      print("User login successful.");
      emailpasswordmatching = false;
    } else {
      print("Login not Successful");
      print("====================================================");
      print("Try Again");
    }
  }
}

listemailpassword() {
  List<Map<String, String>> emailpasswords = [
    {'email': 'Saylani@gmail.com', 'password': 'Saylani1234'},
    {'email': 'SaylaniWelfare@gmail.com', 'password': 'SaylaniWelfare1234'},
    {'email': 'SaylaniIT@gmail.com', 'password': 'SaylaniIT123'}
  ];
  bool emailpass = true;
  while (emailpass == true) {
    stdout.write("Enter Email: ");
    String? useremail = stdin.readLineSync();
    stdout.write("Enter Password: ");
    String? userpass = stdin.readLineSync();

    bool loggedIn = false;
    for (var creds in emailpasswords) {
      if (useremail == creds['email'] && userpass == creds['password']) {
        loggedIn = true;
        break;
      }
    }
    if (loggedIn == true) {
      print("User Login Successful");
      emailpass = false;
    } else {
      print("User Not Login Successful");
    }
  }
}

int countvovels(String str) {
  int count = 0;

  str = str.toLowerCase();
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a' ||
        str[i] == 'e' ||
        str[i] == 'i' ||
        str[i] == 'o' ||
        str[i] == 'u') {
      count++;
    }
  }
  return count;
}

void findelements({required List<int> numbers}) {
  int max = numbers[0];
  int min = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    } else if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  //Print the Maximum and Minimum Elements //
  print("Maximum Elements: $max");
  print("Minimum Elements: $min");
}

void findnegativenum({required List<int> numbers}) {
  int negativenum = 0;
  int sumofnegative = 0;

  for (int i = 0; i < numbers.length; i++) {
    int number = numbers[i];

    // Check if the number is negative
    if (number < 0) {
      negativenum++;
      sumofnegative += number;
    }
  }
  double averageofneg = negativenum > 0 ? sumofnegative / negativenum : 0;
  print("The Average of Negative numbers: $averageofneg");
}
