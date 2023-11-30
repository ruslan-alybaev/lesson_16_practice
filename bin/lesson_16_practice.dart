import 'dart:io';

void main() {
  // print(appNalog());
  // print(zapros());
  print(type());
}

// String appNalog () {
//  print("Введите сумму дохода");
//   int summ = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
//   double nalog = 0;
//   if (summ <= 10000) {
//     return "не облагается налогом";
//   } else if (summ <= 50000){ 
//     nalog = (summ / 100) * 10;
//     return "налог составит $nalog";
//   } else { 
//     nalog = (summ / 100) * 12;
//     return "налог составит $nalog";
//   }
// }


// double zapros () {
//   print("Введите первое число");
//   double num1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
//   print("Введите оператора");
//   String operator = stdin.readLineSync() ?? "";
//   print("Введите второе число");
//   double num2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
// switch (operator) {
//     case '+':
//       return (num1 + num2);
//     case '-':
//       return num1 - num2;
//     case '*':
//       return num1 * num2;
//     case '/':
//       if (num2 != 0) {
//         return num1 / num2;
//       } else {
//         print('Ошибка: деление на ноль.');
//         return double.nan;
//       }
//     default:
//       print('Ошибка: некорректный оператор.');
//       return double.nan;
//   }
// }


String type () {
  print("Введите расширение (.txt, .jpg, .pdf)");
  String input = stdin.readLineSync() ?? "";

  switch (input) {
    case ".txt":
    return "текстовый";
    case ".jpg":
    return "изображение";
    case ".pdf":
    return "документ";
  }
  return "Неправильный формат";
}











