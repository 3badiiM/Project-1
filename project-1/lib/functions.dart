import 'dart:io';
import 'package:project_1/classes/Book.dart';

printMainMenu() {
  print("--------------------- Main Menu ------------------------");
  print('1- Show all books');
  print('2- Search for book');
  print('3- Add book');
  print('4- Delete book');
  print('0- Exit');
  print("-------------------------------------------------------");
}

printSearchMenu() {
  print("------------- Search Menu -------------");
  print('1- Search by title');
  print('2- Search by author');
  print('3- Search by category');
  print('0- Back to main menu');
  print("---------------------------------------");
}

printUpdateMenu() {
  print("------------- Update Menu -------------");
  print('1- Update title');
  print('2- Update author name');
  print('3- Update category');
  print('4- Update publisher');
  print('5- Update height');
  print('6- Update copies');
  print('7- Update price');
  print('0- Back to main menu');
  print("---------------------------------------");
}

printAllBooks(List listOfBooks) {
  if (listOfBooks.isNotEmpty) {
    print(
        "---------------------------------------- The number of Books is (${listOfBooks.length}) ----------------------------------------------");
    for (int i = 0; i < listOfBooks.length; i++) {
      print(
          "----------------------------------------------------${i + 1}----------------------------------------------------------");
      print("Id: ${listOfBooks[i]["Id"]}");
      print("Title: ${listOfBooks[i]["Title"]}");
      print("Author: ${listOfBooks[i]["Author"]}");
      print("Category : ${listOfBooks[i]["Category "]}");
      print("Publisher: ${listOfBooks[i]["Publisher"]}");
      print("Height: ${listOfBooks[i]["Height"]}");
      print("Copies: ${listOfBooks[i]["Copies"]}");
      print("Price: ${listOfBooks[i]["Price"]}");
    }
    print(
        "---------------------------------------------------------------------------------------------------------------");
  } else {
    print('**There are no books in the library**');
  }
}

printAllFoundedBooks(List listOfBooks, String text) {
  if (listOfBooks.isNotEmpty) {
    print(
        "----------------- The number of Books is based on the $text (${listOfBooks.length}) ----------------");
    for (int i = 0; i < listOfBooks.length; i++) {
      print(
          "-------------------------------------${i + 1}------------------------------------------");
      print("Id: ${listOfBooks[i]["Id"]}");
      print("Title: ${listOfBooks[i]["Title"]}");
      print("Author: ${listOfBooks[i]["Author"]}");
      print("Category : ${listOfBooks[i]["Category "]}");
      print("Publisher: ${listOfBooks[i]["Publisher"]}");
      print("Height: ${listOfBooks[i]["Height"]}");
      print("Copies: ${listOfBooks[i]["Copies"]}");
      print("Price: ${listOfBooks[i]["Price"]}");
    }
    print(
        "--------------------------------------------------------------------------------");
  } else {
    print('**There are no books in the library**');
  }
}

searchForBook(List listOfBooks) {
  printSearchMenu();
  bool isRunning = true;
  String userInput;
  bool validationController;
  while (isRunning) {
    userInput = stdin.readLineSync()!;
    switch (userInput) {
      case '1':
        validationController = true;
        do {
          print('Enter the book title: ');
          userInput = stdin.readLineSync()!.toLowerCase();
          List foundedBook = [];
          foundedBook = listOfBooks
              .where((element) =>
                  element['Title'].toString().toLowerCase() == userInput)
              .toList();
          if (userInput.isEmpty) {
            print('**No entry, please enter the title**');
          } else if (foundedBook.isNotEmpty) {
            printAllFoundedBooks(foundedBook, "title");
            validationController = false;
            isRunning = false;
          } else {
            print('**No book belongs to this title**');
            validationController = false;
            isRunning = false;
          }
        } while (validationController);
        break;
      case '2':
        validationController = true;
        do {
          print('Enter the book author: ');
          userInput = stdin.readLineSync()!.toLowerCase();
          List foundedBook = [];
          foundedBook = listOfBooks
              .where((element) =>
                  element['Author'].toString().toLowerCase() == userInput)
              .toList();
          if (userInput.isEmpty) {
            print('**No entry, please enter the author name**');
          } else if (foundedBook.isNotEmpty) {
            printAllFoundedBooks(foundedBook, "auther name");
            validationController = false;
            isRunning = false;
          } else {
            print('**No book belongs to this author**');
            validationController = false;
            isRunning = false;
          }
        } while (validationController);
        break;
      case '3':
        validationController = true;
        do {
          print('Enter the book category: ');
          userInput = stdin.readLineSync()!.toLowerCase();
          List foundedBook = [];
          foundedBook = listOfBooks
              .where((element) =>
                  element['Category'].toString().toLowerCase() == userInput)
              .toList();
          if (userInput.isEmpty) {
            print('**No entry, please enter the category**');
          } else if (foundedBook.isNotEmpty) {
            printAllFoundedBooks(foundedBook, "category");
            validationController = false;
            isRunning = false;
          } else {
            print('**No book belongs to this category**');
            validationController = false;
            isRunning = false;
          }
        } while (validationController);

        break;
      case '0':
        isRunning = false;
        break;
      default:
        print("**Choose a number from the menu please!**");
        printSearchMenu();
        break;
    }
  }
}

addBook(List listOfBooks) {
  List<dynamic> listToAdd = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  for (var i = 1; i < 8; i++) {
    String input;
    switch (i) {
      case 1:
        bool validationController = true;
        do {
          print('Enter the book title: ');
          input = stdin.readLineSync()!;
          if (input.isNotEmpty) {
            listToAdd[i] = input;
            validationController = false;
          } else {
            print('**No entry, please enter a title**');
          }
        } while (validationController);
        break;
      case 2:
        bool validationController = true;
        do {
          print('Enter the author name: ');
          input = stdin.readLineSync()!;
          if (input.isNotEmpty) {
            listToAdd[i] = input;
            validationController = false;
          } else {
            print('**No entry, please enter a name**');
          }
        } while (validationController);
        break;
      case 3:
        bool validationController = true;
        do {
          print('Enter the category: ');
          input = stdin.readLineSync()!;
          if (input.isNotEmpty) {
            listToAdd[i] = input;
            validationController = false;
          } else {
            print('**No entry, please enter a category**');
          }
        } while (validationController);
        break;
      case 4:
        bool validationController = true;
        do {
          print('Enter the publisher name: ');
          input = stdin.readLineSync()!;
          if (input.isNotEmpty) {
            listToAdd[i] = input;
            validationController = false;
          } else {
            print('**No entry, please enter a name**');
          }
        } while (validationController);
        break;
      case 5:
        bool validationController = true;
        do {
          try {
            print('Enter the book height: ');
            listToAdd[i] = int.parse(stdin.readLineSync()!);
            validationController = false;
          } catch (error) {
            print('**Wrong entry, please enter an integer**');
          }
        } while (validationController);
        break;
      case 6:
        bool validationController = true;
        do {
          try {
            print('Enter the book copies: ');
            listToAdd[i] = int.parse(stdin.readLineSync()!);
            validationController = false;
          } catch (error) {
            print('**Wrong entry, please enter an integer**');
          }
        } while (validationController);
        break;
      case 7:
        bool validationController = true;
        do {
          try {
            print('Enter the book price: ');
            listToAdd[i] = int.parse(stdin.readLineSync()!);
            validationController = false;
          } catch (error) {
            print('**Wrong entry, please enter an integer**');
          }
        } while (validationController);
        break;
    }
  }
  bool isExist = false;
  for (var book in listOfBooks) {
    if ((book['Title'] == listToAdd[1]) &&
        (book['Author'] == listToAdd[2]) &&
        (book['Category'] == listToAdd[3]) &&
        (book['Publisher'] == listToAdd[4]) &&
        (book['Height'] == listToAdd[5]) &&
        (book['Price'] == listToAdd[7])) {
      book['Copies'] += book['Copies'];
      isExist = true;
      break;
    }
  }
  if (isExist) {
    print("**The copy(s) added to the book successfuly**");
  } else {
    listOfBooks.add({
      'Id': ++Book.noOfBooks,
      'Title': listToAdd[1],
      'Author': listToAdd[2],
      'Category ': listToAdd[3],
      'Publisher': listToAdd[4],
      'Height': listToAdd[5],
      'Copies': listToAdd[6],
      'Price': listToAdd[7]
    });
    print("**The book is added successfuly**");
  }
}

deleteBook(List listOfBooks) {
  printAllBooks(listOfBooks);
  int input;
  bool isExist = false;
  bool validationController = true;

  if (listOfBooks.isNotEmpty) {
    print('Enter the book id to be deleted:');
    do {
      try {
        input = int.parse(stdin.readLineSync()!);
        for (var i = 0; i < listOfBooks.length; i++) {
          if (listOfBooks[i]['Id'] == input) {
            listOfBooks.removeAt(i);
            isExist = true;
            break;
          }
        }
        if (isExist) {
          print("**The book is deleted successfuly**");
          validationController = false;
        } else if (input == 0) {
          break;
        } else {
          print('**This id does not exist to cancel press 0**');
        }
      } catch (error) {
        print('**Wrong entry, please enter an integer or to cancel enter 0**');
      }
    } while (validationController);
  }
}

printAllCategories(List listOfBooks) {}

purchaseBook(List listOfbooks) {}
archive(List listOfbooks) {}

updateBook(List listOfBooks) {
  printAllBooks(listOfBooks);
  printUpdateMenu();
  List<dynamic> listToAdd = [0, 1, 2, 3, 4, 5, 6, 7];
  dynamic input;
  bool isRunning = true;
  bool validationController;
  while (isRunning) {
    input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        print('Enter the book title: ');
        break;
      case '2':
        break;
      case '3':
        break;
      case '4':
        break;
      case '5':
        break;
      case '6':
        break;
      case '7':
        break;
      case '0':
        isRunning = false;
        break;
      default:
        print("**Choose a number from the menu please!**");
        printUpdateMenu();
        break;
    }
  }
}
