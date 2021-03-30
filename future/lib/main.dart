void main(){
  asyncFunction().then((String message) => print(message));
}


void function1() {
  print("Function 1");
}

Future function2() async {
  await null;
  for(int i = 0; i < 900000000; i++);
  print("Function 2");
}

void function3() {
  print("Function 3");
}

Future<String> asyncFunction() async {
  await null;
  for(int i = 0; i < 1000000000; i++);
  print("Async Function");
  return "Completed";
}
// Kullanımı

