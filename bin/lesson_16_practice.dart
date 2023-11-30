import 'dart:io';


void main() {
  // print(appNalog());
  // print(zapros());
  // print(type());

  double balance = 0;
  menu(balance);
}

void menu (double balance) {
  print("""Добрый день!
  Добро пожаловать в личный кабинет!
  Выберите операцию
  1) Депозит
  2) Снять деньги
  3) Запрос баланса
  4) Закрыть счёт""");
  String choice = stdin.readLineSync() ?? "";
  switch (choice) {
    case "1":
    print("Введите сумму депозита");
    double inputBalance = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
      balance = deposite(balance, inputBalance);
      menu(balance);
      break;
      case "2":
      print("Введите сумму снятия");
      double outBalance = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
      balance = cashOut(balance, outBalance);
      menu(balance);
      break;
      case "3":
      print("Ваш баланс - $balance");
      menu(balance);
      break;
      case "4":
      print("Счет закрыт");
      break;
      default:
      print("Error");
      menu(balance);
      break;
  }
}
double deposite (double currentBalance, inputBalance) {
  return currentBalance + inputBalance;
} 
double cashOut (double currentBalance, outBalance) {
  return currentBalance - outBalance;
} 


// Задача №1
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


// Задача №2
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


// Задача №3
// String type () {
//   print("Введите расширение (.txt, .jpg, .pdf)");
//   String input = stdin.readLineSync() ?? "";
//   switch (input) {
//     case ".txt":
//     return "текстовый";
//     case ".jpg":
//     return "изображение";
//     case ".pdf":
//     return "документ";
//   }
//   return "Неправильный формат";
// }











