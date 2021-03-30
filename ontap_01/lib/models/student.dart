class Students{
  int id;
  String firstName;
  String lastName;
  int grade;
  String status;
  String arananKisi;

  Students(String firstName,String lastName,int grade){
    this.id=id;
    this.firstName=firstName;
    this.lastName=lastName;
    this.grade=grade;
  }

  Students.withId(int id,String firstName,String lastName,int grade){
    this.id=id;
    this.firstName=firstName;
    this.lastName=lastName;
    this.grade=grade;
  }

  String get getStatus{
    String message="";
    if(this.grade>=50){
      message="Geçti";
    }
    else if(this.grade>40){
      message="Bütünlemeye kaldı";
    }
    else {
      message="Kaldı";
    }
    this.status=message;
    return this.status;
  }

  String get getArananKisi {
    String message1 = "";
    if (this.firstName == "Kerem") {
      message1 = "Aranan kişi";
    }
    else {
      message1 = "Aranan kişi değil";
    }
    this.arananKisi = message1;
    return this.arananKisi;
  }
}
