import 'package:flutter/material.dart';

void main() {
  runApp(Deneme());
}

class Deneme extends StatelessWidget{
  int yeni_deger=130;
  Deneme(){
     this.yeni_deger=yeni_deger;
  }

  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
        title: "flutter",
        home:Column(children: [
          Text("data1",style: TextStyle(fontSize: 30),),
          Text("data2",style: TextStyle(fontSize: 30),),
          Text("data3",style: TextStyle(fontSize: 30),),
          Text("data4",style: TextStyle(fontSize: 30),),
          Text("data5",style: TextStyle(fontSize: 30),),
          Text("data6",style: TextStyle(fontSize: 30),),
          Text("data7",style: TextStyle(fontSize: 30),),
          Text("data8",style: TextStyle(fontSize: 30),),
          Text("data9",style: TextStyle(fontSize: 30),),
          Text("data10",style: TextStyle(fontSize: 30),),
          Text("data11",style: TextStyle(fontSize: 30),),
          Text("data12",style: TextStyle(fontSize: 30),),
          Text("data13",style: TextStyle(fontSize: 30),),
          Text("data14",style: TextStyle(fontSize: 30),),
          Text("data15",style: TextStyle(fontSize: 30),),
          Text("data16",style: TextStyle(fontSize: 30),),
          Text("data17",style: TextStyle(fontSize: 30),),
          Text("data18",style: TextStyle(fontSize: 30),),
        ],
        )
    )
    );
  }
}