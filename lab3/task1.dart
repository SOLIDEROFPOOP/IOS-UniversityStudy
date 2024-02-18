import 'dart:collection';

// Student structure
class Student {
  String firstName;
  String lastName;
  double averageGrade;

  Student(this.firstName, this.lastName, this.averageGrade);
}

// Student Journal
class StudentJournal {
  List<Student> _students = [];

  // Method to add a new student to the journal
  void addStudent(Student student) {
    _students.add(student);
  }

  // Method to remove a student from the journal by first and last name
  void removeStudent(String firstName, String lastName) {
    _students.removeWhere((student) =>
        student.firstName == firstName && student.lastName == lastName);
  }

  // Method to display information about all students in a journal
  void displayStudentsInfo() {
    _students.forEach((student) {
      print(
          'Name: ${student.firstName} ${student.lastName}, Average Grade: ${student.averageGrade}');
    });
  }

  // Method to list students in descending order of their GPA
  void listStudentsByDescendingGPA() {
    _students.sort((a, b) => b.averageGrade.compareTo(a.averageGrade));
    displayStudentsInfo();
  }

  // Method to find the average score of all students in a journal
  double findAverageScore() {
    if (_students.isEmpty) return 0.0;

    double total = 0.0;
    _students.forEach((student) {
      total += student.averageGrade;
    });
    return total / _students.length;
  }

  // Method to find the student with the highest GPA
  Student findStudentWithHighestGPA() {
  

    _students.sort((a, b) => b.averageGrade.compareTo(a.averageGrade));
    return _students.first;
  }
}

void main() {
  // Test the implementation
  StudentJournal journal = StudentJournal();

  // Adding students
  journal.addStudent(Student('John', 'Doe', 3.8));
  journal.addStudent(Student('Alice', 'Smith', 4.0));
  journal.addStudent(Student('Bob', 'Johnson', 3.5));

  // Displaying all students' information
  journal.displayStudentsInfo();

  // Listing students by descending GPA
  journal.listStudentsByDescendingGPA();

  // Finding the average score of all students
  print('Average Score: ${journal.findAverageScore()}');

  // Finding the student with the highest GPA
  print(
      'Student with the highest GPA: ${journal.findStudentWithHighestGPA().firstName} ${journal.findStudentWithHighestGPA().lastName}');
}
