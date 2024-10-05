void main() {

  double totalDinero = 1000.0;

  double josue = 0.27 * totalDinero;
  double daniel = 0.25 * totalDinero;
  double tamar = 0.85 * josue;
  double caleb = 0.23 * (josue + daniel);
  double david = totalDinero - (josue + daniel + tamar + caleb);

  // Imprimir los resultados
  print('Josué recibe: \$${josue.toStringAsFixed(2)}');
  print('Daniel recibe: \$${daniel.toStringAsFixed(2)}');
  print('Tamar recibe: \$${tamar.toStringAsFixed(2)}');
  print('Caleb recibe: \$${caleb.toStringAsFixed(2)}');
  print('David recibe: \$${david.toStringAsFixed(2)}');
}
