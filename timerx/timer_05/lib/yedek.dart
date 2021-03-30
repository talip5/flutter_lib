import 'dart:async';

void main(){
  fonk();
  print("Timer");
  Duration duration=Duration(seconds: 3);
  Timer timer=Timer(duration,(){print("object");});
  timer.cancel();
  print(timer.toString());
  print(timer.hashCode);
  if(timer.isActive){
    print("aktif");
  }
  else{
    print("aktif değil");
  }
  print(timer.runtimeType);
  print(fonk());
}


String fonk(){
  String sonuc="olumlu";
  Timer(Duration(seconds: 4),(){print("fonksiyon");
  return sonuc;
  });
}