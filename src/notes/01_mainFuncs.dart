void main() {
  for (var i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }
  String name = 'Voyager I';
  int year = 1977;
  double antennaDiameter = 3.7;
  List<String> flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  Map<String, String> image = {'tags': 'saturn', 'url': '//path/to/saturn.jpg'};
  print('$name, $year, $antennaDiameter');
  // Para apresentar as informações da imagem do mapa:
  // Você pode acessar os valores usando suas chaves e então imprimi-los.
  print('Image Tags: ${image['tags']}');
  print('Image URL: ${image['url']}');
  // Ou, você pode imprimir o mapa inteiro:
  print('Image Map: $image');

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (var object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  /// Calcula o n-ésimo número da sequência de Fibonacci.
  /// A sequência de Fibonacci é uma série de números onde cada número é a soma
  /// dos dois anteriores, geralmente começando com 0 e 1.
  /// Exemplos: 0, 1, 1, 2, 3, 5, 8, 13, ...
  ///
  /// Parâmetros:
  /// - `n`: O índice do número de Fibonacci a ser calculado.
  ///
  /// Retorna:
  /// O n-ésimo número de Fibonacci.
  ///
  /// Lógica:
  /// - Se `n` for 0 ou 1, a função retorna `n` diretamente (casos base da recursão).
  /// - Para `n` maior que 1, a função chama a si mesma recursivamente para `n-1`
  ///   e `n-2` e soma os resultados. Isso simula a definição da sequência de Fibonacci.
  int fibonacci(int n) {
    // Caso base: Se n for 0 ou 1, o número de Fibonacci é o próprio n.
    if (n == 0 || n == 1) return n;
    // Caso recursivo: O n-ésimo número de Fibonacci é a soma dos dois anteriores.
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(20);
  print(result);

  try {
    for (var object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}
