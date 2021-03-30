import 'package:flutter/material.dart';
import 'package:text_center_center/models/student.dart';
import 'package:text_center_center/screens/page1.dart';
import 'package:text_center_center/screens/page2.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "M",
    home: MyApp(),
  ));
}

/*void main(){
  mat mat_deger=mat();
print(mat_deger.count1);
  print("deger");
 print(mat_deger.mat5(3));
}
*/
/*void main(){

 mat(24);
}

 */

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Page1();
  }
}

class mat{
  mat(int say){
    int top=say*6;
    print(top);
  }
}

class mat1{
  int count1=50;
  mat5(int a){
    int b=a*5;
    int carpma=b*5;
    return carpma;
  }
}