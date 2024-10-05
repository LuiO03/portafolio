import 'dart:math';

void main() {

  double r = 5.0;
  double h = 10.0;

  double area = 2 * pi * r * (r + h);

  double volumen = pi * pow(r, 2) * h;

  // Imprimir resultados
  print('El área total del cilindro es: $area');
  print('El volumen del cilindro es: $volumen');
}
