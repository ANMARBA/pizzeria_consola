import 'dart:io';

void main() {
  String menu = """
  1). Pizza Grande = 6.000
  2). Pizza Mediana = 3.000
  3). Pizza Pequeña = 1.000
  """;
  stdout.writeln(menu);
  var linePedido = stdin.readLineSync();
  var pedido = int.tryParse(linePedido ?? '');
  if (pedido == null || (pedido <= 0 || pedido >= 4)) {
    stdout.writeln('Digita un valor valido');
    return;
  }
  String pizzas = '¿Cuantas pizzas quiere?';
  stdout.writeln(pizzas);
  var lineCantidad = stdin.readLineSync();
  var cantidad = int.tryParse(lineCantidad ?? '');
  if (cantidad == null || cantidad <= 0) {
    stdout.writeln('Digita una cantidad valida');
    return;
  }
  totalPizzas(pedido: pedido, cantidad: cantidad);
}

totalPizzas({
  required int pedido,
  required int cantidad,
}) {
  double menu1 = 6.000;
  double menu2 = 3.000;
  double menu3 = 1.000;
  switch (pedido) {
    case 1:
      String total = (menu1 * cantidad).toStringAsFixed(3);
      stdout.writeln("Total: $total por $cantidad Pizza(s) Grande");
      break;
    case 2:
      String total = (menu2 * cantidad).toStringAsFixed(3);
      stdout.writeln("Total: $total por $cantidad Pizza(s) Mediana");
      break;
    case 3:
      String total = (menu3 * cantidad).toStringAsFixed(3);
      stdout.writeln("Total: $total por $cantidad Pizza(s) Pequeña");
      break;
  }
}
