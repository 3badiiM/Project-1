import 'dart:io';
import 'package:project_1/classes/Book.dart';
import 'package:project_1/functions.dart';

List<Map<String, dynamic>> listOfBooks = [
  {
    'Id': 1,
    'Title': 'g',
    'Author': 'Foreman, John',
    'Category': 'Data',
    'Publisher': 'Wiley',
    'Height': 235,
    'Copies': 5,
    'Price': 50,
  },
];

void main() {
  Book.noOfBooks = listOfBooks.length;
  print("---------------------- Welcome -------------------------");
  while (true) {
    printMainMenu();
    String userInput = stdin.readLineSync()!;
    switch (userInput) {
      case '1':
        printAllBooks(listOfBooks);
        break;
      case '2':
        searchForBook(listOfBooks);
        break;
      case '3':
        addBook(listOfBooks);
        break;
      case '4':
        deleteBook(listOfBooks);
        break;
      case '0':
        exit(0);
      default:
        print("**Choose a number from the menu please!**");
        printMainMenu();
        userInput = stdin.readLineSync()!;
        break;
    }
  }
}
