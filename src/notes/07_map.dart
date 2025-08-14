void main() async {
  // Mapa
  
  // <chave, valor>
  Map<String, String> mapa = {'chave' : 'valor'};
  print(mapa['chave']);
  
  // Adicionar valores em um mapa
  mapa.putIfAbsent('novaChave', () => 'novoValor');
  print(mapa);
  
  mapa['novaChaveDois'] = 'novoValorDois';
  print(mapa);
  
  // Remover valores de um mapa
  mapa.remove('chave');
  print(mapa);
  
  // Atualizar valores de um mapa
  mapa['novaChaveDois'] = 'atualizado';
  print(mapa);
  
  mapa.update('novaChaveDois', (value) => 'atualizando2');
  print(mapa);
  
  // Iterar sobre o mapa
  mapa.forEach((chave, valor) => print('a chave e: $chave, o valor e: $valor'));
  
  mapa.keys.forEach(print);
  
  mapa.values.forEach(print);
}