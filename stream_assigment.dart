//STREAM:assigment:
Stream<int> downloadProgress() async*{
  for(int i = 0;i<=100;i +=20){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
void main() async{
  await for (final progress in downloadProgress()){
    if(progress ==100){
      print("Download completed succecfully and is equal to 100");
    } else {
       print("Download: $progress%");
    }
  }
  print("Download Completed");
}
