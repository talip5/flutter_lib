Future hello() async{
  await null;
  for(int i=0; i<500000000; i++) {
  }
  print('hello');
}

Future book() async{
  await null;
  for(int j=0; j<100; j++){
  }
  print('j degeri');
}
void book1(){
  for(int j=0; j<100; j++){
  }
  print('book1');
}

Future<String> asyncFunction() async{
  await null;
  print('önce');
  for(int k=0; k<1000; k++);
  print('AsyncFunction');
  return 'Complement';
}
void main() {
  hello();
  book();
  asyncFunction().then((String message) => print(message));
  print('tamam');
  book1();
}