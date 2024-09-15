import 'dart:io';

void main() {
  // String Manipulation Section
  StringManipulation sm = StringManipulation();
  sm.perform();

  // Collections Section
  CollectionOperations co = CollectionOperations();
  co.perform();

  // File Handling Section
  FileHandling fh = FileHandling();
  fh.perform();

  // Date and Time Section
  DateAndTime dt = DateAndTime();
  dt.perform();
}

// String Manipulation Class
class StringManipulation {
  void perform() {
    print("String Manipulation:");
    String firstName = "John";
    String lastName = "Doe";
    String fullName = firstName + " " + lastName;
    print("Full name (concatenation): $fullName");

    String greeting = "Hello, $firstName $lastName!";
    print("Greeting (interpolation): $greeting");

    String extracted = fullName.substring(0, 4); // Extracting 'John'
    print("Extracted substring: $extracted");

    String upperCase = fullName.toUpperCase();
    String lowerCase = fullName.toLowerCase();
    print("Uppercase: $upperCase");
    print("Lowercase: $lowerCase");

    String reversed = fullName.split('').reversed.join('');
    print("Reversed string: $reversed");

    int length = fullName.length;
    print("Length of full name: $length\n");
  }
}

// Collections Operations Class
class CollectionOperations {
  void perform() {
    print("Collections Operations:");
    // Lists
    List<String> fruits = ["Apple", "Banana", "Mango"];
    fruits.add("Orange");
    fruits.remove("Banana");
    print("List of fruits: $fruits");

    print("Iterating over the list:");
    for (String fruit in fruits) {
      print(fruit);
    }

    // Sets (ensures unique values)
    Set<String> countries = {"USA", "Canada", "India"};
    countries.add("UK");
    countries.add("India"); // Won't be added as it's already in the set
    print("Set of countries (no duplicates): $countries");

    print("Iterating over the set:");
    for (String country in countries) {
      print(country);
    }

    // Maps (key-value pairs)
    Map<String, int> studentGrades = {"Alice": 90, "Bob": 85, "Charlie": 92};
    studentGrades["David"] = 88;
    studentGrades.remove("Bob");
    print("Map of student grades: $studentGrades");

    print("Iterating over the map:");
    studentGrades.forEach((name, grade) {
      print("$name: $grade");
    });
    print("");
  }
}

// File Handling Class
class FileHandling {
  void perform() async {
    print("File Handling:");
    // Reading content from a file
    try {
      String content = await File('input.txt').readAsString();
      print("Content of input.txt:\n$content");
    } catch (e) {
      print("Error reading file: $e");
    }

    // Writing new data into another file
    try {
      await File('output.txt').writeAsString('This is some new data.');
      print("Data written to output.txt successfully.");
    } catch (e) {
      print("Error writing to file: $e");
    }
    print("");
  }
}

// Date and Time Class
class DateAndTime {
  void perform() {
    print("Date and Time:");
    DateTime now = DateTime.now();
    print("Current DateTime: $now");

    print("Formatted date: ${now.day}-${now.month}-${now.year}");

    DateTime futureDate = now.add(Duration(days: 10));
    DateTime pastDate = now.subtract(Duration(days: 5));
    print("Future date (+10 days): $futureDate");
    print("Past date (-5 days): $pastDate");

    String dateString = "2024-09-15";
    DateTime parsedDate = DateTime.parse(dateString);
    print("Parsed date: $parsedDate");

    Duration difference = futureDate.difference(parsedDate);
    print(
        "Difference between futureDate and parsedDate: ${difference.inDays} days\n");
  }
}
