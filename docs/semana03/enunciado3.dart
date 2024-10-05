import 'dart:io';

void main() {
  
  print('Ingrese el monto total de inversión:');
  double? totalDinero = double.parse(stdin.readLineSync()!);

  double alquiler = 0.23 * totalDinero;
  double publicidad = 0.07 * totalDinero;
  double transporte = 0.26 * totalDinero;
  double servicios = 0.12 * totalDinero;
  double decoracion = 0.21 * totalDinero;
  double gastosVarios = 0.11 * totalDinero;

  // Imprimir los resultados
  print('Gasto en alquiler de espacio: \$${alquiler.toStringAsFixed(2)}');
  print('Gasto en publicidad: \$${publicidad.toStringAsFixed(2)}');
  print('Gasto en transporte: \$${transporte.toStringAsFixed(2)}');
  print('Gasto en servicios feriales: \$${servicios.toStringAsFixed(2)}');
  print('Gasto en decoración: \$${decoracion.toStringAsFixed(2)}');
  print('Gasto en gastos varios: \$${gastosVarios.toStringAsFixed(2)}');
}
