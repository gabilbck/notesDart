void main() async { // função principal assíncrona
  // Future, async e await
  String nome = "Gabi";
  Future<String> cepFuture = getCepByName("Rua JK");
  late String cep;
  
  // cepFuture.then((result) => cep = result);
  cep = await cepFuture; // espera o resultado da Future
  print(cep);
}

// Serviço externo
Future<String> getCepByName(String name){
  // simulando requisição
  return Future.value("89009812");
}