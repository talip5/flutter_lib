import 'dart:async';
main() {
cancelTimer();
}

sayac() {
  for (int i = 0; i < 6; ++i) {
    print("sayaç"+i.toString());
    sec5Timer(i);
  }
}
int isStopped=0; //global

sec5Timer(isStopped) {
  Timer.periodic(Duration(seconds: 5), (timer) {
    if (isStopped<3) {
      timer.cancel();
    }
    print("Dekhi 5 sec por por kisu hy ni :/");
  });
}

cancelTimer() {
  Timer.periodic(Duration(seconds: 5), (timer1) {print("Dekhi 5 sec por por kisu hy ni :/");
  //timer1.cancel();
  });
}