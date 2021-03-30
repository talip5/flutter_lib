import 'dart:async';

bool isStopped=false; //global

sec5Timer() {
  Timer.periodic(Duration(seconds: 5), (timer) {
    if (isStopped) {
      timer.cancel();
    }
    print("Dekhi 5 sec por por kisu hy ni :/");
  });
}
