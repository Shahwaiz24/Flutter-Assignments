import 'dart:async';
import 'dart:io';
import 'dart:math';

void main(){

// Question No#1 // 

print("Question No# 01");
print("===================================================================================================================");
List <String> names = ["Shahwaiz","Abeer","Huzaifa","Bilal","Shameer"];

for(var i = 0; i < names.length; i++){
  print("Name of Student ${names[i]}");
}

print("Question No# 02");
print("===================================================================================================================");
// Question No#2 //

List <String> days = [];
days.add("Monday");
days.add("Tuesday");
days.add("Wednesday");
days.add("Thursday");
days.add("Friday");
days.add("Saturday");
days.add("Sunday");

print("Days of the week $days");

print("Question No# 03");
print("===================================================================================================================");

// Question No#3 // 

List <String> Days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday","Sunday"];

for(var o = 1; o < 7; o++){
  Days.removeLast();
  print( Days);
}

print("Question No# 04");
print("===================================================================================================================");
 
 // Question No# 4 //

 List<int> numbers = [15, 7, 23, 42, 9, 5, 11, 8];


  int smallest = numbers[0];  
  int greatest = numbers[0]; 

 
  for (int num in numbers) {
    if (num < smallest) {
      smallest = num;
    }
    if (num > greatest) {
      greatest = num;
    }
  }

  // Print the results
  print("List of numbers: $numbers");
  print("Smallest number: $smallest");
  print("Greatest number: $greatest");

  print("Question No# 05");
print("===================================================================================================================");
 

// Question No# 05 //

Map <String, String> userinfo = {
  "name": "Shahwaiz",
  "Phone": "1234567889",
  "Address": "12345 Main Street",};

  // Iterate through where // 

  Iterable <String> Keyswith4length = userinfo.keys.where((keys) => keys.length == 4);

  // Print // 

  print("The Original Map: $userinfo");
  print("Keys with 4 Length $Keyswith4length");

   print("Question No# 05");
print("===================================================================================================================");
 
// Question No# 06 // 

Map World = {
  "USA": {
    "Capital City" : "Washington, D.C.",
    "CURRENCY" : "USD",
    "LANGUAGE": "English",
  },
  "PAKISTAN": {
    "Capital City" : "Islamabad",
    "CURRENCY" : "PKR",
    "LANGUAGE": "URDU",
  },
  "INDIA": {
    "Capital City" : "New Delhi",
    "CURRENCY" : "INR",
    "LANGUAGE": "Hindi",
  },
  "JAPAN": {
    "Capital City" : "Tokyo",
    "CURRENCY" : "JPY",
    "LANGUAGE": "Japanese",
  },

};

String countrykey = "USA";

if(World.containsKey(countrykey)){
  Map <String, String> Countryinfo = World[countrykey];

  print("Country : $countrykey");
  print("Capital City : ${Countryinfo["Capital City"]}");
  print("Language : ${Countryinfo["LANGUAGE"]}");
  print("Currency : ${Countryinfo["CURRENCY"]}");
}
else{
  print("Country Not Found in the World Map");
}

print("Question No# 07");
print("===================================================================================================================");
 
 // Question No# 07 // 
 Map <String, double> foradd  ={
  'fri': 5000.0,
  
 };
Map<String, double> expenses = {
'sun': 3000.0,
'mon': 3000.0,
'tue': 3234.0,
};

if(expenses.containsKey('fri')){
expenses['fri'] = 5000.0;
}
else{
  expenses.addAll(foradd);

}
print(expenses);

print("Question No# 08");
print("===================================================================================================================");
  
  // Question No# 08 //

  List<Map> usersEligibility = [
  {'name': "Jhon", 'eligible': true},
  {'name': 'Alice', 'eligible': false},
  {'name': 'Mike', 'eligible': true},
  {'name': 'Sarah', 'eligible': true},
  {'name': 'Tom', 'eligible': false},
];

print("Before Removing the False Value $usersEligibility");

usersEligibility.removeWhere((eligible) => eligible['eligible'] == false);
print("After Removing the False Value $usersEligibility");

print("Question No# 09");
print("===================================================================================================================");
  
  // Question No# 09 //

List <int> integers = [9, 3, 4, 100, 2000, 33, 44];

var MaximmumNumbers = integers.reduce(max);

print("The List of Maximmum numbers is: $MaximmumNumbers");

print("Question No# 10");
print("===================================================================================================================");
  
  // Question No# 10 //

List <String> list = ['Shahwaiz', 'Shammer','Shahwaiz','Shammer', 'Abeer','Huzaifa', 'Daniyal', 'Abeer'];
List <String> removeduplicate = list.toSet().toList();

print("Original List: $list");
print("Removed Duplicates: $removeduplicate");

print("Question No# 11");
print("===================================================================================================================");
  
  // Question No# 11 //

  List <int> OriginalList = [1, 2, 3, 4, 5, 9, 8, 5, 15];
  int n = 4 ;

List <int> NewList = OriginalList.take(n).toList();

print("Original List: $OriginalList");
print('New List (first $n elements): $NewList');

print("Question No# 12");
print("===================================================================================================================");
  
  // Question No# 12 //
List <String> Flights = ['Faisal Chamber', 'Amir Pathan', 'Bali', 'Yousuf Pathan'];
List <String> reversed = Flights.reversed.toList();

print("Original List: $Flights");
print("Reversed List: $reversed");

print("Question No# 13");
print("===================================================================================================================");
  
  // Question No# 13 //

  List<int> originalList = [1, 2, 3, 4, 2, 3, 5, 6, 7, 8, 7, 9];
  List<int> uniqueElements = originalList.toSet().toList();

  print("Original List: $originalList");
  print("Unique Elements: $uniqueElements");

  print("Question No# 14");
print("===================================================================================================================");
  
  // Question No# 14 //

  List<int> num = [9, 10, 8, 5, 4, 3, 2, 1,0, 6, 7];
  List<int> sorted = List.from(num)..sort();

  print("Original List: $num");
   print("Sorted List: $sorted");

     print("Question No# 15");
print("===================================================================================================================");
  
  // Question No# 15 //

  List<int> number = [0, -1, -2, -6, -8, -9, -7, -5, -3, -9, -1, 4, 5, 7, 8, 9, 10, 2, 5];
  List positive = number.where((number) => number > 0).toList()..sort();

  print("Original List: $number");
  print("A List that contains Only Positive Number: $positive");

       print("Question No# 16");
print("===================================================================================================================");
  
  // Question No# 16 //

   List<int> oddeven = [0, 3, 5, 9, 22, 32, 52, 10, 11, 20, 5, 2, 4, 8, 6];
  List filter = oddeven.where((number) => number % 2 ==0).toList()..sort();

   print("Original List: $oddeven");
  print("Filter out List: $filter");

  print("Question No# 17");
print("===================================================================================================================");
  
  // Question No# 17 //

  List <int> forsquare = [2,4,5,6,7,8,10000];
  List <int> squared = forsquare.map((number) => number * number).toList();
  
   print("Original List: $forsquare");
  print("Squared Element List: $squared");

  print("Question No# 18");
print("===================================================================================================================");
  
  // Question No# 18 //

  Map<String, dynamic> person = {
  "name": "Jhon",
  "age": 20,
  "isStudent": true,
};

if (person["isStudent"] == true && person["age"] > 18) {
  print("Eligible");
} else {
  print("Not eligible");
}

  print("Question No# 19");
print("===================================================================================================================");
  
  // Question No# 19 //

Map<String, dynamic> Product = {
  "name" : "Suns Cream",
  "Price" : 100, 
  "Quantity" : 10
};
if(Product["Quantity"] > 0){
  print("In Stock");
}
else{
  print("Out of Stock");
}

print("Question No# 20");
print("===================================================================================================================");
  
  // Question No# 20 //

  Map<String, dynamic> car = {
    "brand" : "Toyota",
    "color": "Red",
    "isSedan" : true };

    if(car["isSedan"]==true && car["brand"]== 'Toyota'){
      print("Match");
    }
    else{
      print("Not Match");
    }


    print("Question No# 21");
print("===================================================================================================================");
  
  // Question No# 21 //

  Map<String, dynamic> user = {
    "name": "John",
    "isAdmin": true,
    "isActive": true,
  };

  // Check if the user is both an admin and active

  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }

  print("Question No# 22");
print("===================================================================================================================");
  
  // Question No# 22 //

  Map<String, int> shoppingcart = {
    "apple" : 2,
    "banana" : 5,
    "orange" : 7,
    "pineapple" : 10  };

    if(shoppingcart.containsKey("apple")){
      print("Product Exist");
    }
    else{
      print("Product Not Found");
    }

}

