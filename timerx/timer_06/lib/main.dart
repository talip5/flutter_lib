void main(){

  var addDt = DateTime.now();
  var current_time= addDt.add(Duration(hours: 4, minutes: 0));
  print(current_time); //2020–04–07 21:02:09.367
  print("");
  print("");
  print(DateTime.now());
  var anotherDt = DateTime.now().subtract(Duration(minutes: 5));
  print("xxx  :");
  print(anotherDt);
  print(addDt.isAfter(anotherDt)); // true
  var subDt = DateTime.now().subtract(Duration(minutes: 55));
  print(addDt.isBefore(subDt)); // true
  var diffDt = addDt.difference(subDt); // 249:59:59.999000
  print(diffDt.inSeconds);
  print(diffDt.inHours);
  print(diffDt.inMinutes);
  print(diffDt.inDays);
}