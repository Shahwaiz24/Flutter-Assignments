import 'dart:io';
import 'dart:math';

void main(){
  // Question No#1 //
int length;
int breadth;

// Assigning Value // 


length = 5;
breadth = 5;

// Check if they both are Square Otherwise it is Rectangle //

if(length == breadth){
  print("They Both are Square");
}
else{
  print("They Are Rectangle");
}

// Question No#2 // 

// Taking input from the First Person // 
stdout.write("Enter the Age of First Person");
int age1 = int.parse(stdin.readLineSync()!);

stdout.write("Enter the Age of Second Person");
int age2 = int.parse(stdin.readLineSync()!);

// Checking The Ages By If/else // 

if(age1 > age2){
  print("The First Person is Oldest");
  print("The Second Person is Youngest");
}
else{
  print("The Second Person is Oldest");
  print("The First Person is Younger");
}

// Question No#3//

// Number of Classes Held // 
int classesheld = 16;

// Number of Classes Attend // 
int classesatended = 10;

// Percantage of Attended Classes // 

double attendancepercantage = (classesatended / classesheld) *100;
print('Attendance Percentage: $attendancepercantage%');

// Checking The Student is not allowed in Exams // 

if(attendancepercantage >= 75){
  print("Student can Sit in Exam");
}
else{
  print('Student not be able to sit in Exam..!');
}

// Question No#4 // 

// Taking input From the user // 

stdout.write("Enter the Tempreature in Celsius");
double Celsius = double.parse(stdin.readLineSync()!);

print("Celsius is : $Celsius");

// Convert Celsius into Fahrenhiet // 

double Fahrenhiet = (Celsius * 9/5) +32 ;

print(" Celcius in Fahrenhiet is $Fahrenhiet");


// Question No#5 // 

// Temprature In Celcius // 

double Tempreature = 42;

// Printing The Celcius // 

print("The Temprature in Celcius is: $Tempreature°C");

// Checking the Conditions // 

if(Tempreature < 0 ){
  print("Freezing Weather");
}
else if(Tempreature >=0 && Tempreature >=10){
  print("Very Cold Weather");
}
else if(Tempreature >=10 && Tempreature >=20){
  print("Cold weather");
}
else if(Tempreature >=20 && Tempreature >=30){
  print("Normal Temp");
}
else if(Tempreature >=30 && Tempreature >=40){
  print("its Hot");
}
else if(Tempreature >=40){
  print("Its Very Hot");
}

// Question No#6 // 

print('Enter your Alphabet');
String? alphabet = stdin.readLineSync();
String vovel = 'a', e, i, o, u;

// Checking The Alphabet // 

if(alphabet == vovel){
  print('Your Alphabet is an vovel');
}
else{
  print('Your Alphabet is Not an Vovel');
}

// Question No#7 // 

print('Enter Your Number');
 String? s = stdin.readLineSync();
  if (s != null){
    int n = int.parse(s);
    print(sqrt(n)); 
  }

  // Question No#9 // 

  print('Enter Your Even/Odd Number');
int value = int.parse(stdin.readLineSync()!);



// Checking the Statement // 

if(value % 2 ==0){
  print("$value is Even");

  if( value % 5 == 0){
    print("$value Divisible by 5");
  } 
  else{
    print('$value is Not Divisible by 5');
  }

}else{
print('$value is Odd');

if(value % 7 ==0){
  print("$value is Divisible by 7");
}
else{
  print("$value is not Divisible 7");
}
}

// Question No#10 // 

print('Enter the Number');
int num1 = int.parse(stdin.readLineSync()!);

// Second Input // 

print('Enter the Number');
int num2 = int.parse(stdin.readLineSync()!);

// Third Input //

print('Enter the Number');
int num3 = int.parse(stdin.readLineSync()!);

int Greatestnumber = num1;

// Checking the Greatest Number // 

if(Greatestnumber < num2){
  Greatestnumber = num2;
}

if(Greatestnumber < num3){
  Greatestnumber = num3;
}

// Checking the Lowest Number //

int lowestnumber = num1;

if(lowestnumber > num2){
lowestnumber = num2;
}
if(lowestnumber > num3){
lowestnumber = num3;
}

print('This is an Lowest Number $lowestnumber');
print('This is an Greater Number $Greatestnumber');


 
 }

