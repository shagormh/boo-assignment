import 'dart:io';

void main(){
  int containerWidth = 1000;

  int imageWidth = int.parse(stdin.readLineSync()!);
  int leftMargin;
  if(imageWidth >= containerWidth){
    leftMargin = 0;

  }else{
    leftMargin = (containerWidth-imageWidth) ~/ 2;
  }

  print(leftMargin);
}