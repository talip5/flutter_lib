class Student{
  String firstName;
  String lastName;
  int grade;
  Student(String firstName){
    this.firstName=firstName;
  }
  Student.grade(String firstName,String lastName,int grade){
    this.firstName=firstName;
    this.lastName=lastName;
    this.grade=grade;
  }
}