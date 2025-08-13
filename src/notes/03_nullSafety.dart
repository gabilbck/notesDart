void main() {
  
  // DIFERENÇA ENTRE ? e LATE
  
  // 1. Usando ? pode atribuir valor de nulo em outro moemnto
  String? nome;
  // print(nome!); -> aqui ! ainda não funciona
  nome = 'Ana';
  print(nome!); // ! garante que a variável não é nula
  nome = null;
  
  // 2. Usando late não pode atribuir valor de nulo em outro moemnto
  late String sobrenome;
  sobrenome = 'Silva';
  print(sobrenome);
  // sobrenome = null;
  
}
